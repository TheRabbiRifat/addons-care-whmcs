/**
 * AddonsCare UI System v3.1 — Vanilla JS
 * =============================================================================
 * Tab-based navigation, modal, toast, alert dismiss, pagination, settings form.
 * No jQuery. No external dependencies.
 * =============================================================================
 */
(function () {
    'use strict';

    var root;

    // ---------------------------------------------------------------------------
    // Boot
    // ---------------------------------------------------------------------------
    function boot() {
        root = document.querySelector('.addonscare');
        if (!root) return;

        initTabs();
        initModals();
        initAlertDismiss();
        initToastButtons();
        initSettingsForm();
        initPagination();
    }

    // ---------------------------------------------------------------------------
    // 1. TAB NAVIGATION — switches panels
    // ---------------------------------------------------------------------------
    function initTabs() {
        var tabButtons = root.querySelectorAll('[data-ac-tab]');

        tabButtons.forEach(function (btn) {
            btn.addEventListener('click', function () {
                var panelId = btn.getAttribute('data-ac-tab');

                // Deactivate all tabs
                tabButtons.forEach(function (b) {
                    b.classList.remove('ac-tab--active');
                    b.setAttribute('aria-selected', 'false');
                });

                // Activate clicked tab
                btn.classList.add('ac-tab--active');
                btn.setAttribute('aria-selected', 'true');

                // Switch panel
                root.querySelectorAll('.ac-panel').forEach(function (p) {
                    p.classList.remove('ac-panel--active');
                });
                var target = root.querySelector('#' + panelId);
                if (target) target.classList.add('ac-panel--active');
            });
        });
    }
        // Open triggers
        root.querySelectorAll('[data-ac-modal]').forEach(function (btn) {
            btn.addEventListener('click', function (e) {
                e.preventDefault();
                var id = btn.getAttribute('data-ac-modal');
                var overlay = root.querySelector(id);
                if (overlay) overlay.classList.add('ac-overlay--visible');
            });
        });

        // Close triggers
        root.querySelectorAll('[data-ac-close]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var overlay = btn.closest('.ac-overlay');
                if (overlay) overlay.classList.remove('ac-overlay--visible');
            });
        });

        // Close on overlay background click
        root.querySelectorAll('.ac-overlay').forEach(function (overlay) {
            overlay.addEventListener('click', function (e) {
                if (e.target === overlay) {
                    overlay.classList.remove('ac-overlay--visible');
                }
            });
        });

        // Close on ESC
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Escape') {
                var visible = root.querySelector('.ac-overlay--visible');
                if (visible) visible.classList.remove('ac-overlay--visible');
            }
        });
    }

    // ---------------------------------------------------------------------------
    // 4. TOAST — AC.toast(message, type)
    // ---------------------------------------------------------------------------
    function showToast(message, type) {
        var container = root.querySelector('#ac-toast-container');
        if (!container) return;

        var icons = {
            success: '\u2713',
            warning: '\u26A0',
            error: '\u2717',
            info: '\u2139'
        };

        var toast = document.createElement('div');
        toast.className = 'ac-toast ac-toast--' + (type || 'info');
        toast.innerHTML =
            '<span style="font-size:1.1em">' + (icons[type] || icons.info) + '</span>' +
            '<span>' + message + '</span>';
        container.appendChild(toast);

        // Auto-remove after 4s
        setTimeout(function () {
            toast.classList.add('ac-toast--out');
            setTimeout(function () {
                if (toast.parentNode) toast.parentNode.removeChild(toast);
            }, 300);
        }, 4000);
    }

    // Expose globally
    window.AC = window.AC || {};
    window.AC.toast = showToast;

    // ---------------------------------------------------------------------------
    // 5. ALERT / BANNER DISMISS
    // ---------------------------------------------------------------------------
    function initAlertDismiss() {
        root.querySelectorAll('[data-ac-dismiss="alert"]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var banner = btn.closest('.ac-banner');
                if (!banner) return;
                banner.classList.add('ac-banner--hide');
                setTimeout(function () {
                    if (banner.parentNode) banner.parentNode.removeChild(banner);
                }, 200);
            });
        });
    }

    // ---------------------------------------------------------------------------
    // 6. DEMO TOAST TRIGGERS
    // ---------------------------------------------------------------------------
    function initToastButtons() {
        var messages = {
            success: 'Operation completed successfully.',
            error: 'Something went wrong. Please try again.',
            warning: 'This action may have side effects.',
            info: 'Settings are saved automatically.'
        };

        root.querySelectorAll('[data-demo-toast]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var type = btn.getAttribute('data-demo-toast') || 'info';
                showToast(messages[type] || messages.info, type);
            });
        });
    }

    // ---------------------------------------------------------------------------
    // 7. SETTINGS FORM — fake save with loading state
    // ---------------------------------------------------------------------------
    function initSettingsForm() {
        var form = root.querySelector('#ac-settings-form');
        if (!form) return;

        form.addEventListener('submit', function (e) {
            e.preventDefault();
            var btn = root.querySelector('[type="submit"][form="ac-settings-form"]')
                || form.querySelector('[type="submit"]');
            if (!btn) return;

            var label = btn.textContent;
            btn.classList.add('ac-btn--loading');
            btn.disabled = true;

            setTimeout(function () {
                btn.classList.remove('ac-btn--loading');
                btn.disabled = false;
                btn.textContent = label;
                showToast('Configuration saved successfully.', 'success');
            }, 1200);
        });
    }

    // ---------------------------------------------------------------------------
    // 8. PAGINATION
    // ---------------------------------------------------------------------------
    function initPagination() {
        root.querySelectorAll('.ac-pager__btn').forEach(function (btn) {
            btn.addEventListener('click', function () {
                if (btn.disabled) return;
                var text = btn.textContent.trim();
                if (isNaN(parseInt(text, 10))) return;

                root.querySelectorAll('.ac-pager__btn--current').forEach(function (a) {
                    a.classList.remove('ac-pager__btn--current');
                });
                btn.classList.add('ac-pager__btn--current');
                showToast('Loading page ' + text + '...', 'info');
            });
        });
    }

    // ---------------------------------------------------------------------------
    // Entry point
    // ---------------------------------------------------------------------------
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', boot);
    } else {
        boot();
    }

}());
