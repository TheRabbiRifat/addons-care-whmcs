/**
 * AddonsCare UI System — Vanilla JS
 * =============================================================================
 * Lightweight interactions: Tabs, Modal, Toast, Alert dismiss.
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
    // 1. TABS — click handler toggles active tab + panel
    // ---------------------------------------------------------------------------
    function initTabs() {
        root.querySelectorAll('.ac-tabs').forEach(function (tabGroup) {
            var nav = tabGroup.querySelector('.ac-tabs__nav');
            if (!nav) return;

            nav.addEventListener('click', function (e) {
                var tab = e.target.closest('.ac-tabs__tab');
                if (!tab) return;

                // Deactivate siblings
                nav.querySelectorAll('.ac-tabs__tab').forEach(function (t) {
                    t.classList.remove('ac-tabs__tab--active');
                    t.setAttribute('aria-selected', 'false');
                });

                // Activate clicked tab
                tab.classList.add('ac-tabs__tab--active');
                tab.setAttribute('aria-selected', 'true');

                // Toggle panels
                var panelId = tab.getAttribute('aria-controls');
                var panels = tabGroup.querySelector('.ac-tabs__panels');
                if (panels) {
                    panels.querySelectorAll('.ac-tabs__panel').forEach(function (p) {
                        p.classList.remove('ac-tabs__panel--active');
                    });
                    var target = panels.querySelector('#' + panelId);
                    if (target) target.classList.add('ac-tabs__panel--active');
                }
            });
        });
    }

    // ---------------------------------------------------------------------------
    // 2. MODALS — open via data-ac-modal, close via data-ac-close / overlay / ESC
    // ---------------------------------------------------------------------------
    function initModals() {
        // Open triggers
        root.querySelectorAll('[data-ac-modal]').forEach(function (btn) {
            btn.addEventListener('click', function (e) {
                e.preventDefault();
                var id = btn.getAttribute('data-ac-modal');
                var overlay = root.querySelector(id);
                if (overlay) overlay.classList.add('ac-modal-overlay--visible');
            });
        });

        // Close triggers (buttons inside modal)
        root.querySelectorAll('[data-ac-close]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var overlay = btn.closest('.ac-modal-overlay');
                if (overlay) overlay.classList.remove('ac-modal-overlay--visible');
            });
        });

        // Close on overlay click (outside modal box)
        root.querySelectorAll('.ac-modal-overlay').forEach(function (overlay) {
            overlay.addEventListener('click', function (e) {
                if (e.target === overlay) {
                    overlay.classList.remove('ac-modal-overlay--visible');
                }
            });
        });

        // Close on ESC key
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Escape') {
                var visible = root.querySelector('.ac-modal-overlay--visible');
                if (visible) visible.classList.remove('ac-modal-overlay--visible');
            }
        });
    }

    // ---------------------------------------------------------------------------
    // 3. TOAST — AC.toast(message, type) API
    // ---------------------------------------------------------------------------
    function showToast(message, type) {
        var container = root.querySelector('#ac-toast-container');
        if (!container) return;

        var icons = { success: '\u2713', warning: '\u26A0', error: '\u2717', info: '\u2139' };

        var toast = document.createElement('div');
        toast.className = 'ac-toast ac-toast--' + (type || 'info');
        toast.innerHTML = '<span>' + (icons[type] || icons.info) + '</span><span>' + message + '</span>';
        container.appendChild(toast);

        // Auto-remove after 4 seconds
        setTimeout(function () {
            toast.classList.add('ac-toast--fade-out');
            setTimeout(function () {
                if (toast.parentNode) toast.parentNode.removeChild(toast);
            }, 300);
        }, 4000);
    }

    // Expose globally
    window.AC = window.AC || {};
    window.AC.toast = showToast;

    // ---------------------------------------------------------------------------
    // 4. ALERT DISMISS — data-ac-dismiss="alert"
    // ---------------------------------------------------------------------------
    function initAlertDismiss() {
        root.querySelectorAll('[data-ac-dismiss="alert"]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var alert = btn.closest('.ac-alert');
                if (!alert) return;
                alert.classList.add('ac-alert--fade-out');
                setTimeout(function () {
                    if (alert.parentNode) alert.parentNode.removeChild(alert);
                }, 200);
            });
        });
    }

    // ---------------------------------------------------------------------------
    // Demo: toast trigger buttons
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
    // Demo: settings form fake save
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
                showToast('Settings saved successfully.', 'success');
            }, 1400);
        });
    }

    // ---------------------------------------------------------------------------
    // Demo: pagination highlight
    // ---------------------------------------------------------------------------
    function initPagination() {
        root.querySelectorAll('.ac-pagination__btn').forEach(function (btn) {
            btn.addEventListener('click', function () {
                if (btn.disabled) return;
                var text = btn.textContent.trim();
                if (isNaN(parseInt(text, 10))) return;

                root.querySelectorAll('.ac-pagination__btn--active').forEach(function (a) {
                    a.classList.remove('ac-pagination__btn--active');
                });
                btn.classList.add('ac-pagination__btn--active');
                showToast('Loading page ' + text, 'info');
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
