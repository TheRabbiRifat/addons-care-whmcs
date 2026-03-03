/**
 * Addons Care - Module-Specific Script
 * =============================================================================
 * Boots the AC engine and wires up all demo interactions on this page.
 * Depends on: assets/addonscare.js (loaded before this file).
 * =============================================================================
 */

(function () {
    'use strict';

    // -------------------------------------------------------------------------
    // Boot: called after DOM is ready
    // -------------------------------------------------------------------------
    function boot() {
        var root = document.querySelector('.addonscare');
        if (!root) return;

        // Initialise all AC components (idempotent - safe to call multiple times)
        if (window.AC && typeof window.AC.init === 'function') {
            window.AC.init();
        }

        initToastButtons(root);
        initSettingsForm(root);
        initPagination(root);
        initRowActions(root);
        initStatCounters(root);
        initSkeletonToggle(root);
        initTabHashSync(root);
    }

    // -------------------------------------------------------------------------
    // Demo toast trigger buttons (data-demo-toast="success|error|warning|info")
    // -------------------------------------------------------------------------
    function initToastButtons(root) {
        var messages = {
            success: 'Operation completed successfully.',
            error:   'Something went wrong. Please try again.',
            warning: 'This action may have side effects.',
            info:    'Settings are saved automatically.'
        };

        root.querySelectorAll('[data-demo-toast]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var type = btn.getAttribute('data-demo-toast') || 'success';
                if (window.AC && window.AC.Toast) {
                    var fn = window.AC.Toast[type];
                    if (typeof fn === 'function') {
                        fn.call(window.AC.Toast, messages[type] || messages.info);
                    } else {
                        window.AC.Toast.show(messages.info, type);
                    }
                }
            });
        });
    }

    // -------------------------------------------------------------------------
    // Settings form: fake save with loading state -> success toast
    // -------------------------------------------------------------------------
    function initSettingsForm(root) {
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

                if (window.AC && window.AC.Toast) {
                    window.AC.Toast.success('Settings saved successfully.');
                }
            }, 1400);
        });
    }

    // -------------------------------------------------------------------------
    // Pagination demo: highlight clicked page number
    // -------------------------------------------------------------------------
    function initPagination(root) {
        root.querySelectorAll('.ac-pagination__btn').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var item = btn.closest('.ac-pagination__item');
                if (!item || item.classList.contains('ac-pagination__item--disabled')) return;

                var list = item.closest('.ac-pagination__list');
                if (list) {
                    list.querySelectorAll('.ac-pagination__item--active').forEach(function (a) {
                        a.classList.remove('ac-pagination__item--active');
                    });
                }

                var text = btn.textContent.trim();
                if (!isNaN(parseInt(text, 10))) {
                    item.classList.add('ac-pagination__item--active');
                    if (window.AC && window.AC.Toast) {
                        window.AC.Toast.info('Loading page ' + text);
                    }
                }
            });
        });
    }

    // -------------------------------------------------------------------------
    // Row actions: delete triggers the confirm modal
    // -------------------------------------------------------------------------
    function initRowActions(root) {
        // Open confirm modal and store target service ID
        root.querySelectorAll('[data-action-delete]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var id = btn.getAttribute('data-action-delete');
                var modal = root.querySelector('#ac-confirm-modal');
                if (modal) modal.setAttribute('data-target-id', id);

                if (window.AC && window.AC.Modal) {
                    window.AC.Modal.show('#ac-confirm-modal');
                }
            });
        });

        // Confirm deletion button inside modal
        root.querySelectorAll('[data-ac-confirm-delete]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var modal = root.querySelector('#ac-confirm-modal');
                var id = modal ? modal.getAttribute('data-target-id') : '';

                if (window.AC) {
                    if (window.AC.Modal) window.AC.Modal.close('#ac-confirm-modal');
                    if (window.AC.Toast) window.AC.Toast.success('Service #' + id + ' deleted.');
                }
            });
        });

        // Retry buttons on error state panels
        root.querySelectorAll('[data-demo-retry]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                if (window.AC && window.AC.Toast) {
                    window.AC.Toast.info('Retrying...');
                }
            });
        });
    }

    // -------------------------------------------------------------------------
    // Stat card counters: animate number from 0 to displayed value
    // -------------------------------------------------------------------------
    function initStatCounters(root) {
        root.querySelectorAll('.ac-stat-card__value[data-count-to]').forEach(function (el) {
            var target = parseInt(el.getAttribute('data-count-to'), 10);
            if (isNaN(target)) return;

            var duration  = 900;
            var interval  = 16;
            var steps     = Math.ceil(duration / interval);
            var increment = target / steps;
            var current   = 0;

            var timer = setInterval(function () {
                current = Math.min(current + increment, target);
                el.textContent = Math.round(current).toLocaleString();
                if (current >= target) clearInterval(timer);
            }, interval);
        });
    }

    // -------------------------------------------------------------------------
    // Skeleton loader toggle button
    // -------------------------------------------------------------------------
    function initSkeletonToggle(root) {
        var btn  = root.querySelector('#ac-toggle-skeleton');
        var demo = root.querySelector('#ac-skeleton-demo');
        if (!btn || !demo) return;

        btn.addEventListener('click', function () {
            demo.classList.toggle('ac-d-none');
            btn.textContent = demo.classList.contains('ac-d-none') ? 'Show' : 'Hide';
        });
    }

    // -------------------------------------------------------------------------
    // Tab URL hash sync: update hash on click, restore on page load
    // -------------------------------------------------------------------------
    function initTabHashSync(root) {
        root.querySelectorAll('.ac-tabs__tab').forEach(function (tab) {
            tab.addEventListener('click', function () {
                var panel = tab.getAttribute('aria-controls');
                if (panel && window.history && window.history.replaceState) {
                    window.history.replaceState(null, '', '#' + panel);
                }
            });
        });

        var hash = window.location.hash.replace('#', '');
        if (hash) {
            var target = root.querySelector('[aria-controls="' + hash + '"]');
            if (target) target.click();
        }
    }

    // -------------------------------------------------------------------------
    // Entry point
    // -------------------------------------------------------------------------
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', boot);
    } else {
        boot();
    }

}());
