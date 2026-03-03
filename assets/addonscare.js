/**
 * ==========================================================================
 * *   ADDONS CARE - Master JavaScript Engine                                *
 * *   Version : 1.0.0                                                       *
 * *   Scope   : All .addonscare containers on the page                    *
 * *   Deps    : NONE - vanilla JS only, no jQuery required                 *
 * *   Target  : ES2017+ (safe for WHMCS bundled environments)              *
 * ==========================================================================
 *
 * Modules:
 *   AC.Tabs          - Tab panel switching
 *   AC.Modal         - Modal open / close / focus trap
 *   AC.Sidebar       - Collapsible sidebar + mobile drawer
 *   AC.Dropdown      - Dropdown menus
 *   AC.Toast         - Toast notification queue
 *   AC.Table         - Sortable / bulk-select tables
 *   AC.Alert         - Dismissible alerts
 *   AC.NavSub        - Sidebar sub-navigation accordion
 *   AC.Form          - Inline validation helpers
 *   AC.init          - Auto-boot on DOMContentLoaded
 */

(function (root, factory) {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports = factory();
  } else {
    root.AC = factory();
  }
}(typeof window !== 'undefined' ? window : this, function () {
  'use strict';

  /* ------------------------------------------------------------------------ */
  /*  UTILS                                                                   */
  /* ------------------------------------------------------------------------ */

  const SCOPE = '.addonscare';

  function qsa(sel, ctx) { return Array.from((ctx || document).querySelectorAll(sel)); }
  function qs(sel, ctx)  { return (ctx || document).querySelector(sel); }

  function onEsc(fn) {
    return function handler(e) {
      if (e.key === 'Escape' || e.keyCode === 27) fn(e);
    };
  }

  function trapFocus(el) {
    const focusable = el.querySelectorAll(
      'a[href],button:not([disabled]),input:not([disabled]),select:not([disabled]),textarea:not([disabled]),[tabindex]:not([tabindex="-1"])'
    );
    const first = focusable[0];
    const last  = focusable[focusable.length - 1];
    function handler(e) {
      if (e.key !== 'Tab') return;
      if (e.shiftKey) {
        if (document.activeElement === first) { e.preventDefault(); last.focus(); }
      } else {
        if (document.activeElement === last)  { e.preventDefault(); first.focus(); }
      }
    }
    el.addEventListener('keydown', handler);
    return function removeTrap() { el.removeEventListener('keydown', handler); };
  }

  function uniqueId(prefix) {
    return (prefix || 'ac') + '-' + Math.random().toString(36).substr(2, 8);
  }

  /* ------------------------------------------------------------------------ */
  /*  TABS                                                                    */
  /* ------------------------------------------------------------------------ */

  const Tabs = {
    init(scope) {
      qsa('.ac-tabs', scope).forEach(function (container) {
        const tabs   = qsa('.ac-tabs__tab', container);
        const panels = qsa('.ac-tabs__panel', container);

        tabs.forEach(function (tab, i) {
          if (!tab.id)                 tab.id = uniqueId('ac-tab');
          if (panels[i] && !panels[i].id) panels[i].id = uniqueId('ac-panel');
          tab.setAttribute('role', 'tab');
          tab.setAttribute('aria-controls', panels[i] ? panels[i].id : '');
          if (panels[i]) {
            panels[i].setAttribute('role', 'tabpanel');
            panels[i].setAttribute('aria-labelledby', tab.id);
          }

          tab.addEventListener('click', function () {
            Tabs.activate(container, tab, tabs, panels);
          });

          tab.addEventListener('keydown', function (e) {
            const idx = tabs.indexOf(e.currentTarget);
            if (e.key === 'ArrowRight' || e.key === 'ArrowDown') {
              e.preventDefault();
              const next = tabs[(idx + 1) % tabs.length];
              next.click(); next.focus();
            } else if (e.key === 'ArrowLeft' || e.key === 'ArrowUp') {
              e.preventDefault();
              const prev = tabs[(idx - 1 + tabs.length) % tabs.length];
              prev.click(); prev.focus();
            } else if (e.key === 'Home') {
              e.preventDefault(); tabs[0].click(); tabs[0].focus();
            } else if (e.key === 'End') {
              e.preventDefault(); tabs[tabs.length-1].click(); tabs[tabs.length-1].focus();
            }
          });
        });
      });
    },

    activate(container, activeTab, allTabs, allPanels) {
      allTabs.forEach(function (t, i) {
        const isActive = t === activeTab;
        t.classList.toggle('ac-tabs__tab--active', isActive);
        t.setAttribute('aria-selected', String(isActive));
        t.setAttribute('tabindex', isActive ? '0' : '-1');
        if (allPanels[i]) {
          allPanels[i].classList.toggle('ac-tabs__panel--active', isActive);
          allPanels[i].setAttribute('aria-hidden', String(!isActive));
        }
      });
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  MODAL                                                                   */
  /* ------------------------------------------------------------------------ */

  const Modal = {
    _active: null,
    _removeTrap: null,
    _escHandler: null,
    _prevFocus: null,

    init(scope) {
      // Open via data-ac-modal="<target-id>"
      qsa('[data-ac-modal]', scope).forEach(function (btn) {
        btn.addEventListener('click', function () {
          const id = btn.getAttribute('data-ac-modal');
          const overlay = qs('#' + id, scope) || qs(id, scope);
          if (overlay) Modal.open(overlay);
        });
      });

      // Close buttons
      qsa('[data-ac-modal-close]', scope).forEach(function (btn) {
        btn.addEventListener('click', function () {
          const overlay = btn.closest('.ac-modal-overlay');
          if (overlay) Modal.close(overlay);
        });
      });

      // Click outside to close
      qsa('.ac-modal-overlay', scope).forEach(function (overlay) {
        overlay.addEventListener('click', function (e) {
          if (e.target === overlay) Modal.close(overlay);
        });
      });
    },

    open(overlay) {
      if (Modal._active) Modal.close(Modal._active);
      overlay.removeAttribute('aria-hidden');
      overlay.classList.remove('ac-hidden');
      overlay.classList.remove('ac-closing');
      Modal._active = overlay;
      Modal._prevFocus = document.activeElement;

      const modal = qs('.ac-modal', overlay);
      if (modal) {
        Modal._removeTrap = trapFocus(overlay);
        // Focus first focusable
        const first = modal.querySelector('button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])');
        if (first) setTimeout(() => first.focus(), 50);
      }

      Modal._escHandler = onEsc(() => Modal.close(overlay));
      document.addEventListener('keydown', Modal._escHandler);
    },

    close(overlay) {
      overlay.classList.add('ac-closing');
      if (Modal._removeTrap) { Modal._removeTrap(); Modal._removeTrap = null; }
      if (Modal._escHandler) { document.removeEventListener('keydown', Modal._escHandler); Modal._escHandler = null; }

      const duration = parseFloat(
        getComputedStyle(document.documentElement)
          .getPropertyValue('--ac-transition-slow')
          .replace('ms','')
      ) || 300;

      setTimeout(function () {
        overlay.classList.add('ac-hidden');
        overlay.classList.remove('ac-closing');
        overlay.setAttribute('aria-hidden', 'true');
        if (Modal._prevFocus) { Modal._prevFocus.focus(); Modal._prevFocus = null; }
        Modal._active = null;
      }, duration);
    },

    /* Public API: AC.Modal.open('#my-modal') */
    show(selector) {
      const el = typeof selector === 'string'
        ? qs(selector) || qs('[id="' + selector.replace('#','') + '"]')
        : selector;
      if (el) this.open(el);
    },
    hide(selector) {
      const el = typeof selector === 'string' ? qs(selector) : selector;
      if (el) this.close(el);
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  SIDEBAR                                                                 */
  /* ------------------------------------------------------------------------ */

  const Sidebar = {
    init(scope) {
      qsa('.ac-sidebar', scope).forEach(function (sidebar) {
        const main    = sidebar.nextElementSibling;
        const toggle  = qs('.ac-sidebar__toggle', sidebar);
        const mobileToggle = scope ? qs('.ac-header__mobile-toggle', scope) : null;
        const overlay = qs('.ac-sidebar-overlay', scope);

        // Desktop collapse
        if (toggle) {
          toggle.addEventListener('click', function () {
            sidebar.classList.toggle('ac-sidebar--collapsed');
            const collapsed = sidebar.classList.contains('ac-sidebar--collapsed');
            toggle.setAttribute('aria-expanded', String(!collapsed));
            try { localStorage.setItem('ac_sidebar_collapsed', collapsed ? '1' : '0'); } catch(e){}
          });

          // Restore persisted state
          try {
            if (localStorage.getItem('ac_sidebar_collapsed') === '1') {
              sidebar.classList.add('ac-sidebar--collapsed');
            }
          } catch(e){}
        }

        // Mobile drawer
        function openDrawer() {
          sidebar.classList.add('ac-sidebar--mobile-open');
          if (overlay) {
            overlay.classList.add('ac-sidebar-overlay--visible');
            overlay.style.display = 'block';
          }
          document.addEventListener('keydown', closeOnEsc);
        }
        function closeDrawer() {
          sidebar.classList.remove('ac-sidebar--mobile-open');
          if (overlay) overlay.classList.remove('ac-sidebar-overlay--visible');
          document.removeEventListener('keydown', closeOnEsc);
        }
        const closeOnEsc = onEsc(closeDrawer);

        if (mobileToggle) mobileToggle.addEventListener('click', openDrawer);
        if (overlay)      overlay.addEventListener('click', closeDrawer);
      });
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  NAV SUB-ACCORDION                                                        */
  /* ------------------------------------------------------------------------ */

  const NavSub = {
    init(scope) {
      qsa('.ac-nav-item--has-children', scope).forEach(function (item) {
        item.addEventListener('click', function (e) {
          e.preventDefault();
          const sub = item.nextElementSibling;
          if (!sub || !sub.classList.contains('ac-nav-subnav')) return;
          const isOpen = sub.classList.contains('ac-nav-subnav--open');
          sub.classList.toggle('ac-nav-subnav--open', !isOpen);
          item.classList.toggle('ac-nav-item--expanded', !isOpen);
          item.setAttribute('aria-expanded', String(!isOpen));
        });
      });
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  DROPDOWN                                                                */
  /* ------------------------------------------------------------------------ */

  const Dropdown = {
    _active: null,

    init(scope) {
      qsa('.ac-dropdown', scope).forEach(function (dd) {
        const trigger = qs('.ac-dropdown__trigger', dd) || qs('[data-ac-dropdown-trigger]', dd);
        const menu    = qs('.ac-dropdown__menu', dd);
        if (!trigger || !menu) return;

        trigger.setAttribute('aria-haspopup', 'true');
        trigger.setAttribute('aria-expanded', 'false');

        trigger.addEventListener('click', function (e) {
          e.stopPropagation();
          if (dd.classList.contains('ac-dropdown--open')) {
            Dropdown.close(dd);
          } else {
            Dropdown.open(dd);
          }
        });

        // Close when item selected
        qsa('.ac-dropdown__item', menu).forEach(function (item) {
          item.addEventListener('click', function () { Dropdown.close(dd); });
        });

        // Keyboard
        menu.addEventListener('keydown', function (e) {
          const items  = qsa('.ac-dropdown__item:not(.ac-dropdown__item--disabled)', menu);
          const active = document.activeElement;
          const idx    = items.indexOf(active);
          if (e.key === 'ArrowDown') { e.preventDefault(); items[Math.min(idx+1, items.length-1)]?.focus(); }
          if (e.key === 'ArrowUp')   { e.preventDefault(); items[Math.max(idx-1, 0)]?.focus(); }
          if (e.key === 'Escape')    { Dropdown.close(dd); trigger.focus(); }
          if (e.key === 'Tab')       { Dropdown.close(dd); }
        });
      });

      // Close on outside click
      document.addEventListener('click', function () {
        if (Dropdown._active) Dropdown.close(Dropdown._active);
      });
    },

    open(dd) {
      if (Dropdown._active && Dropdown._active !== dd) Dropdown.close(Dropdown._active);
      dd.classList.add('ac-dropdown--open');
      const trigger = qs('.ac-dropdown__trigger', dd) || qs('[data-ac-dropdown-trigger]', dd);
      if (trigger) trigger.setAttribute('aria-expanded', 'true');
      Dropdown._active = dd;
      // Focus first item
      const first = qs('.ac-dropdown__item:not(.ac-dropdown__item--disabled)', dd);
      if (first) setTimeout(() => first.focus(), 40);
    },

    close(dd) {
      dd.classList.remove('ac-dropdown--open');
      const trigger = qs('.ac-dropdown__trigger', dd) || qs('[data-ac-dropdown-trigger]', dd);
      if (trigger) trigger.setAttribute('aria-expanded', 'false');
      if (Dropdown._active === dd) Dropdown._active = null;
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  TOAST                                                                   */
  /* ------------------------------------------------------------------------ */

  const Toast = {
    _container: null,
    _queue: [],

    _getContainer(scope) {
      if (Toast._container) return Toast._container;
      let c = qs('.ac-toast-container', scope || document);
      if (!c) {
        const wrapper = (scope || document.body);
        c = document.createElement('div');
        c.className = 'addonscare ac-toast-container ac-toast-container--top-right';
        c.setAttribute('aria-live', 'polite');
        c.setAttribute('aria-atomic', 'false');
        (document.body || wrapper).appendChild(c);
      }
      Toast._container = c;
      return c;
    },

    show(options) {
      const opts = Object.assign({
        type:     'default',   // success | error | warning | info | default
        title:    '',
        message:  '',
        duration: 4000,
        closable: true,
        theme:    'dark'       // dark | light
      }, typeof options === 'string' ? { message: options } : options);

      const container = Toast._getContainer();

      const icons = {
        success: '\u2713', error: '\u2715', warning: '\u26A0', info: '\u2139', default: '\u25CF'
      };

      const toast = document.createElement('div');
      toast.className = 'ac-toast ac-toast--' + opts.type + (opts.theme === 'light' ? ' ac-toast--light' : '');
      toast.setAttribute('role', 'alert');

      const iconHTML = opts.type !== 'default'
        ? '<span class="ac-toast__icon" aria-hidden="true">' + (icons[opts.type] || '') + '</span>'
        : '';

      const titleHTML = opts.title
        ? '<p class="ac-toast__title">' + opts.title + '</p>'
        : '';

      const msgHTML = opts.message
        ? '<p class="ac-toast__message">' + opts.message + '</p>'
        : '';

      const closeHTML = opts.closable
        ? '<button class="ac-toast__close" aria-label="Dismiss notification">&times;</button>'
        : '';

      const progressHTML = opts.duration
        ? '<div class="ac-toast__progress" style="animation-duration:' + opts.duration + 'ms"></div>'
        : '';

      toast.innerHTML = iconHTML +
        '<div class="ac-toast__content">' + titleHTML + msgHTML + '</div>' +
        closeHTML + progressHTML;

      container.appendChild(toast);

      // Close button
      const closeBtn = toast.querySelector('.ac-toast__close');
      if (closeBtn) closeBtn.addEventListener('click', () => Toast._remove(toast));

      // Auto-remove
      let timer = null;
      if (opts.duration) {
        timer = setTimeout(() => Toast._remove(toast), opts.duration);
      }

      toast.addEventListener('mouseenter', () => { if (timer) clearTimeout(timer); });
      toast.addEventListener('mouseleave', () => {
        if (opts.duration) timer = setTimeout(() => Toast._remove(toast), 1000);
      });

      return toast;
    },

    _remove(toast) {
      toast.classList.add('ac-toast--exit');
      toast.addEventListener('animationend', () => toast.remove(), { once: true });
      setTimeout(() => { if (toast.parentNode) toast.remove(); }, 500);
    },

    success(msg, title) { return Toast.show({ type: 'success', message: msg, title: title || 'Success' }); },
    error(msg, title)   { return Toast.show({ type: 'error',   message: msg, title: title || 'Error'   }); },
    warning(msg, title) { return Toast.show({ type: 'warning', message: msg, title: title || 'Warning' }); },
    info(msg, title)    { return Toast.show({ type: 'info',    message: msg, title: title || 'Info'    }); }
  };

  /* ------------------------------------------------------------------------ */
  /*  TABLE                                                                   */
  /* ------------------------------------------------------------------------ */

  const Table = {
    init(scope) {
      // Bulk select
      qsa('.ac-table', scope).forEach(function (table) {
        const masterCheck = qs('thead .ac-table__check input[type="checkbox"]', table);
        const rowChecks   = qsa('tbody .ac-table__check input[type="checkbox"]', table);
        const bulkBar     = qs('.ac-table-bulk-bar', table.closest('.ac-table-wrap') || table.parentElement);

        function updateBulkBar() {
          if (!bulkBar) return;
          const checked = rowChecks.filter(c => c.checked).length;
          bulkBar.setAttribute('aria-hidden', String(checked === 0));
          bulkBar.style.display = checked > 0 ? 'flex' : 'none';
          const countEl = qs('.ac-bulk-count', bulkBar);
          if (countEl) countEl.textContent = checked;
        }

        if (masterCheck) {
          masterCheck.addEventListener('change', function () {
            rowChecks.forEach(c => {
              c.checked = masterCheck.checked;
              c.closest('tr')?.classList.toggle('ac-row--selected', c.checked);
            });
            updateBulkBar();
          });
        }

        rowChecks.forEach(function (check) {
          check.addEventListener('change', function () {
            check.closest('tr')?.classList.toggle('ac-row--selected', check.checked);
            if (masterCheck) {
              masterCheck.checked = rowChecks.every(c => c.checked);
              masterCheck.indeterminate = !masterCheck.checked && rowChecks.some(c => c.checked);
            }
            updateBulkBar();
          });
        });

        // Column sorting (UI-only, emits event for server/JS handling)
        qsa('th.ac-sort', table).forEach(function (th) {
          th.setAttribute('role', 'columnheader');
          th.setAttribute('aria-sort', 'none');
          th.setAttribute('tabindex', '0');

          function doSort() {
            const current = th.classList.contains('ac-sort--asc') ? 'asc'
                          : th.classList.contains('ac-sort--desc') ? 'desc' : 'none';
            qsa('th.ac-sort', table).forEach(t => {
              t.classList.remove('ac-sort--asc', 'ac-sort--desc');
              t.setAttribute('aria-sort', 'none');
            });
            const next = current === 'asc' ? 'desc' : 'asc';
            th.classList.add('ac-sort--' + next);
            th.setAttribute('aria-sort', next === 'asc' ? 'ascending' : 'descending');

            table.dispatchEvent(new CustomEvent('ac:sort', {
              bubbles: true,
              detail: { column: th.dataset.col || th.textContent.trim(), direction: next }
            }));
          }

          th.addEventListener('click', doSort);
          th.addEventListener('keydown', function (e) {
            if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); doSort(); }
          });
        });
      });
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  ALERT (Dismissible)                                                     */
  /* ------------------------------------------------------------------------ */

  const Alert = {
    init(scope) {
      qsa('.ac-alert [data-ac-dismiss="alert"], .ac-alert .ac-alert__close', scope).forEach(function (btn) {
        btn.addEventListener('click', function () {
          const alert = btn.closest('.ac-alert');
          if (!alert) return;
          alert.style.opacity    = '0';
          alert.style.transition = 'opacity 200ms ease, max-height 300ms ease';
          alert.style.maxHeight  = alert.offsetHeight + 'px';
          requestAnimationFrame(() => {
            alert.style.maxHeight  = '0';
            alert.style.padding    = '0';
            alert.style.margin     = '0';
            alert.style.overflow   = 'hidden';
          });
          setTimeout(() => alert.remove(), 350);
        });
      });
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  FORM VALIDATION HELPERS                                                 */
  /* ------------------------------------------------------------------------ */

  const Form = {
    init(scope) {
      // Real-time validation on blur
      qsa('.ac-form[data-ac-validate]', scope).forEach(function (form) {
        form.setAttribute('novalidate', '');

        qsa('.ac-form-control', form).forEach(function (input) {
          input.addEventListener('blur', function () {
            Form.validateField(input);
          });
          input.addEventListener('input', function () {
            if (input.closest('.ac-is-invalid')) Form.validateField(input);
          });
        });

        form.addEventListener('submit', function (e) {
          let valid = true;
          qsa('.ac-form-control', form).forEach(function (input) {
            if (!Form.validateField(input)) valid = false;
          });
          if (!valid) {
            e.preventDefault();
            const firstInvalid = qs('.ac-is-invalid .ac-form-control', form);
            if (firstInvalid) firstInvalid.focus();
          }
        });
      });
    },

    validateField(input) {
      const group = input.closest('.ac-form-group');
      if (!group) return true;
      const feedback = qs('.ac-form-feedback--invalid', group);
      let valid = input.checkValidity ? input.checkValidity() : true;

      group.classList.toggle('ac-is-invalid', !valid);
      group.classList.toggle('ac-is-valid', valid);
      input.classList.toggle('ac-is-invalid', !valid);
      input.classList.toggle('ac-is-valid', valid);
      input.setAttribute('aria-invalid', String(!valid));

      if (feedback && !valid) {
        feedback.textContent = input.validationMessage || 'This field is required.';
      }
      return valid;
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  DATA-AC-* DECLARATIVE HOOKS                                             */
  /*  Provides HTML-only wiring via data attributes                           */
  /* ------------------------------------------------------------------------ */

  const Declarative = {
    init(scope) {
      // data-ac-toast="success|error|warning|info" data-ac-toast-msg="..." data-ac-toast-title="..."
      qsa('[data-ac-toast]', scope).forEach(function (el) {
        el.addEventListener('click', function () {
          const type  = el.getAttribute('data-ac-toast') || 'info';
          const msg   = el.getAttribute('data-ac-toast-msg')   || '';
          const title = el.getAttribute('data-ac-toast-title') || '';
          Toast.show({ type, message: msg, title });
        });
      });

      // data-ac-toggle="<target-selector>"  -- toggle .ac-hidden
      qsa('[data-ac-toggle]', scope).forEach(function (btn) {
        btn.addEventListener('click', function () {
          const sel = btn.getAttribute('data-ac-toggle');
          qsa(sel, scope).forEach(function (target) {
            target.classList.toggle('ac-hidden');
          });
        });
      });

      // data-ac-loading="true"  -- triggers loading state on button click
      qsa('[data-ac-loading]', scope).forEach(function (btn) {
        btn.addEventListener('click', function () {
          btn.classList.add('ac-btn--loading');
          btn.disabled = true;
        });
      });
    }
  };

  /* ------------------------------------------------------------------------ */
  /*  INIT                                                                    */
  /* ------------------------------------------------------------------------ */

  function init(rootEl) {
    const scope = rootEl || document;
    Tabs.init(scope);
    Modal.init(scope);
    Sidebar.init(scope);
    NavSub.init(scope);
    Dropdown.init(scope);
    Alert.init(scope);
    Table.init(scope);
    Form.init(scope);
    Declarative.init(scope);
  }

  // Auto-boot
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => init());
  } else {
    // DOM already ready
    init();
  }

  /* ------------------------------------------------------------------------ */
  /*  PUBLIC API                                                              */
  /* ------------------------------------------------------------------------ */

  return {
    init,
    Toast,
    Modal,
    Sidebar,
    Tabs,
    Table,
    Form,
    Dropdown,
    Alert,

    /* Version */
    version: '1.0.0'
  };

}));
