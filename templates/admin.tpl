{* =============================================================================
   AddonsCare UI System — Admin Panel Template v3.1
   Tab-based navigation · Glassmorphism cards · Teal/Emerald palette
   ============================================================================= *}
<div class="addonscare" id="ac-app">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <div class="ac-container">

    {* =========================================================================
       PAGE HEADER + TAB NAVIGATION
       ========================================================================= *}
    <div class="ac-header">
      <div class="ac-header__top">
        <div>
          <h1>AddonsCare</h1>
          <p>Management and configuration dashboard.</p>
        </div>
        <button class="ac-btn ac-btn--accent ac-btn--sm" data-ac-modal="#modal-sync">
          <i class="fa-solid fa-arrows-rotate fa-lg"></i>
          Sync Now
        </button>
      </div>

      {* Tab Navigation *}
      <nav class="ac-tabs" role="tablist">
        <button class="ac-tab ac-tab--active" role="tab" aria-selected="true" aria-controls="panel-overview" data-ac-tab="panel-overview">
          <i class="fa-solid fa-house fa-lg"></i>
          <span>Overview</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-services" data-ac-tab="panel-services">
          <i class="fa-solid fa-server fa-lg"></i>
          <span>Services</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-analytics" data-ac-tab="panel-analytics">
          <i class="fa-solid fa-chart-pie fa-lg"></i>
          <span>Analytics</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-reports" data-ac-tab="panel-reports">
          <i class="fa-solid fa-file-invoice fa-lg"></i>
          <span>Reports</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-notifications" data-ac-tab="panel-notifications">
          <i class="fa-solid fa-bell fa-lg"></i>
          <span>Notifications</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-activity" data-ac-tab="panel-activity">
          <i class="fa-solid fa-clock-rotate-left fa-lg"></i>
          <span>Activity</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-settings" data-ac-tab="panel-settings">
          <i class="fa-solid fa-gear fa-lg"></i>
          <span>Settings</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-utilities" data-ac-tab="panel-utilities">
          <i class="fa-solid fa-screwdriver-wrench fa-lg"></i>
          <span>Utilities</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-toolkit" data-ac-tab="panel-toolkit">
          <i class="fa-solid fa-layer-group fa-lg"></i>
          <span>Toolkit</span>
        </button>
      </nav>
    </div>

    <div class="ac-content">

      {* PANEL 1: OVERVIEW *}
      <section class="ac-panel ac-panel--active" id="panel-overview">

        {* Alert Banner *}
        <div class="ac-banner ac-banner--ok" role="alert">
          <div class="ac-banner__icon">
            <i class="fa-regular fa-circle-check" style="font-size: 20px;"></i>
          </div>
          <div class="ac-banner__text">
            <strong>All systems operational</strong> &mdash; Last checked 2 minutes ago
          </div>
          <button class="ac-banner__dismiss" data-ac-dismiss="alert">&times;</button>
        </div>

        {* Stat row *}
        <div class="ac-stat-row">
          <div class="ac-stat-card ac-stat-card--teal">
            <div class="ac-stat-card__icon">
              <i class="fa-solid fa-server fa-lg"></i>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">{$services|count}</span>
              <span class="ac-stat-card__label">Active Services</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--up">+14</span>
          </div>

          <div class="ac-stat-card ac-stat-card--emerald">
            <div class="ac-stat-card__icon">
              <i class="fa-solid fa-wallet" style="font-size: 24px;"></i>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">$12,840</span>
              <span class="ac-stat-card__label">Total Revenue</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--up">+8.2%</span>
          </div>

          <div class="ac-stat-card ac-stat-card--amber">
            <div class="ac-stat-card__icon">
              <i class="fa-solid fa-life-ring" style="font-size: 20px;"></i>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">17</span>
              <span class="ac-stat-card__label">Open Tickets</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--down">-3</span>
          </div>

          <div class="ac-stat-card ac-stat-card--rose">
            <div class="ac-stat-card__icon">
              <i class="fa-solid fa-calendar-check fa-lg"></i>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">28</span>
              <span class="ac-stat-card__label">Pending Renewals</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--up">+5</span>
          </div>
        </div>

        {* Two-column: Recent Activity + Quick Actions *}
        <div class="ac-duo">
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Recent Activity</h3>
              <span class="ac-pill">Live</span>
            </div>
            <div class="ac-card__inner">
              <ul class="ac-timeline">
                <li class="ac-timeline__item ac-timeline__item--success">
                  <div class="ac-timeline__dot"></div>
                  <div class="ac-timeline__body">
                    <strong>Service #1001</strong> renewed successfully
                    <span class="ac-timeline__time">2 min ago</span>
                  </div>
                </li>
                <li class="ac-timeline__item ac-timeline__item--warning">
                  <div class="ac-timeline__dot"></div>
                  <div class="ac-timeline__body">
                    <strong>Service #1006</strong> payment overdue
                    <span class="ac-timeline__time">18 min ago</span>
                  </div>
                </li>
                <li class="ac-timeline__item ac-timeline__item--info">
                  <div class="ac-timeline__dot"></div>
                  <div class="ac-timeline__body">
                    New client <strong>Eva Brown</strong> registered
                    <span class="ac-timeline__time">1 hr ago</span>
                  </div>
                </li>
                <li class="ac-timeline__item ac-timeline__item--neutral">
                  <div class="ac-timeline__dot"></div>
                  <div class="ac-timeline__body">
                    Database sync completed — 342 records
                    <span class="ac-timeline__time">3 hrs ago</span>
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Quick Actions</h3>
            </div>
            <div class="ac-card__inner">
              <div class="ac-action-grid">
                <button class="ac-action-tile" data-ac-modal="#modal-sync">
                  <i class="fa-solid fa-rotate-right fa-lg"></i>
                  <span>Sync DB</span>
                </button>
                <button class="ac-action-tile" data-demo-toast="info">
                  <i class="fa-solid fa-file-export fa-lg"></i>
                  <span>Export</span>
                </button>
                <button class="ac-action-tile" data-demo-toast="success">
                  <i class="fa-solid fa-clipboard-list fa-lg"></i>
                  <span>Audit Log</span>
                </button>
                <button class="ac-action-tile" data-demo-toast="warning">
                  <i class="fa-solid fa-paper-plane fa-lg"></i>
                  <span>Notify</span>
                </button>
              </div>
            </div>
          </div>
        </div>

        {* Progress / Quota *}
        <div class="ac-card ac-mt-6">
          <div class="ac-card__top">
            <h3 class="ac-card__title">System Quotas</h3>
          </div>
          <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4">
            <div class="ac-progress-wrap">
              <div class="ac-progress-wrap__header">
                <span>Storage Space</span>
                <span class="ac-progress-wrap__value">45 GB / 100 GB</span>
              </div>
              <div class="ac-progress">
                <div class="ac-progress__bar" style="width: 45%;"></div>
              </div>
            </div>
            <div class="ac-progress-wrap">
              <div class="ac-progress-wrap__header">
                <span>Bandwidth</span>
                <span class="ac-progress-wrap__value">850 GB / 1000 GB</span>
              </div>
              <div class="ac-progress">
                <div class="ac-progress__bar ac-progress__bar--warning" style="width: 85%;"></div>
              </div>
            </div>
          </div>
        </div>

      </section>

      {* PANEL 2: SERVICES *}
      <section class="ac-panel" id="panel-services">

        {if $services|count > 0}
        <div class="ac-card">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Managed Services</h3>
            <div class="ac-card__toolbar">
              <span class="ac-pill ac-pill--count">{$services|count} records</span>
              <button class="ac-btn ac-btn--outline ac-btn--sm" data-demo-toast="info">
                <i class="fa-solid fa-file-arrow-down fa-lg"></i>
                Export
              </button>
            </div>
          </div>
          <div class="ac-filter-bar">
            <div class="ac-filter-bar__search">
              <i class="fa-solid fa-magnifying-glass fa-lg"></i>
              <input type="text" class="ac-input" placeholder="Search services...">
            </div>
            <div class="ac-filter-bar__actions">
              <button class="ac-btn ac-btn--outline ac-btn--sm">Filter</button>
            </div>
          </div>
          <div class="ac-card__inner ac-card__inner--flush">
            <div class="ac-table-wrap">
              <table class="ac-table">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Client</th>
                    <th>Product</th>
                    <th>Status</th>
                    <th>Amount</th>
                    <th>Next Due</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {foreach $services as $svc}
                  <tr>
                    <td><span class="ac-mono">#{$svc.id}</span></td>
                    <td>
                      <div class="ac-user-cell">
                        <div class="ac-avatar">{$svc.client|substr:0:1}</div>
                        <span>{$svc.client}</span>
                      </div>
                    </td>
                    <td>{$svc.product}</td>
                    <td>
                      {if $svc.status == 'active'}
                        <span class="ac-chip ac-chip--success">
                          <span class="ac-chip__dot"></span> Active
                        </span>
                      {elseif $svc.status == 'pending'}
                        <span class="ac-chip ac-chip--warning">
                          <span class="ac-chip__dot"></span> Pending
                        </span>
                      {elseif $svc.status == 'suspended'}
                        <span class="ac-chip ac-chip--danger">
                          <span class="ac-chip__dot"></span> Suspended
                        </span>
                      {else}
                        <span class="ac-chip ac-chip--neutral">
                          <span class="ac-chip__dot"></span> Inactive
                        </span>
                      {/if}
                    </td>
                    <td><strong>{$svc.amount}</strong></td>
                    <td class="ac-text-dim">{$svc.next_due}</td>
                    <td style="text-align: right;">
                      <div class="ac-dropdown">
                        <button class="ac-btn ac-btn--ghost ac-btn--sm" data-ac-dropdown>
                          <i class="fa-solid fa-ellipsis-vertical fa-lg"></i>
                        </button>
                        <div class="ac-dropdown__menu">
                          <button class="ac-dropdown__item">View Details</button>
                          <button class="ac-dropdown__item">Edit Record</button>
                          <div class="ac-dropdown__divider"></div>
                          <button class="ac-dropdown__item ac-dropdown__item--danger">Suspend Service</button>
                        </div>
                      </div>
                    </td>
                  </tr>
                  {/foreach}
                </tbody>
              </table>
            </div>
          </div>
          <div class="ac-card__bottom">
            <nav class="ac-pager" aria-label="Page navigation">
              <button class="ac-pager__btn" disabled>
                <i class="fa-solid fa-chevron-left fa-lg"></i>
              </button>
              <button class="ac-pager__btn ac-pager__btn--current">1</button>
              <button class="ac-pager__btn">2</button>
              <button class="ac-pager__btn">3</button>
              <span class="ac-pager__dots">&hellip;</span>
              <button class="ac-pager__btn">8</button>
              <button class="ac-pager__btn">
                <i class="fa-solid fa-chevron-right fa-lg"></i>
              </button>
            </nav>
          </div>
        </div>
        {else}
        <div class="ac-card">
          <div class="ac-card__inner">
            <div class="ac-empty">
              <div class="ac-empty__visual">
                <i class="fa-solid fa-inbox fa-lg"></i>
              </div>
              <h3 class="ac-empty__title">No services found</h3>
              <p class="ac-empty__desc">There are no services currently managed by this module.</p>
              <button class="ac-btn ac-btn--accent">Refresh Sync</button>
            </div>
          </div>
        </div>
        {/if}

      </section>

      {* PANEL 3: ANALYTICS *}
      <section class="ac-panel" id="panel-analytics">
        <div class="ac-card">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Performance Metrics</h3>
          </div>
          <div class="ac-card__inner">
            <div class="ac-stat-row">
              <div class="ac-stat-card ac-stat-card--teal">
                <div class="ac-stat-card__icon">
                  <i class="fa-solid fa-circle-up fa-lg"></i>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">99.8%</span>
                  <span class="ac-stat-card__label">Uptime</span>
                </div>
              </div>
              <div class="ac-stat-card ac-stat-card--emerald">
                <div class="ac-stat-card__icon">
                  <i class="fa-solid fa-stopwatch fa-lg"></i>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">2.34s</span>
                  <span class="ac-stat-card__label">Avg Response Time</span>
                </div>
              </div>
              <div class="ac-stat-card ac-stat-card--amber">
                <div class="ac-stat-card__icon">
                  <i class="fa-solid fa-arrows-left-right fa-lg"></i>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">2,847</span>
                  <span class="ac-stat-card__label">API Calls/Hour</span>
                </div>
              </div>
              <div class="ac-stat-card ac-stat-card--rose">
                <div class="ac-stat-card__icon">
                  <i class="fa-solid fa-heart-pulse fa-lg"></i>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">12</span>
                  <span class="ac-stat-card__label">Active Monitors</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {* PANEL 4: REPORTS *}
      <section class="ac-panel" id="panel-reports">
        <div class="ac-card">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Available Reports</h3>
            <button class="ac-btn ac-btn--outline ac-btn--sm">
              <i class="fa-solid fa-download fa-lg"></i>
              Download All
            </button>
          </div>
          <div class="ac-card__inner">
            <div class="ac-space-y-3">
              <div style="display: flex; justify-content: space-between; padding: 12px; background: rgba(20,184,166,.08); border-radius: 8px; border: 1px solid rgba(20,184,166,.2);">
                <div><strong>Monthly Revenue Report</strong><span style="display: block; font-size: 0.75rem; color: #64748b; margin-top: 4px;">Generated 2 days ago</span></div>
                <button class="ac-btn ac-btn--accent ac-btn--sm">Download</button>
              </div>
              <div style="display: flex; justify-content: space-between; padding: 12px; background: rgba(34,197,94,.08); border-radius: 8px; border: 1px solid rgba(34,197,94,.2);">
                <div><strong>Service Usage Analytics</strong><span style="display: block; font-size: 0.75rem; color: #64748b; margin-top: 4px;">Last 30 days</span></div>
                <button class="ac-btn ac-btn--accent ac-btn--sm">Download</button>
              </div>
              <div style="display: flex; justify-content: space-between; padding: 12px; background: rgba(245,158,11,.08); border-radius: 8px; border: 1px solid rgba(245,158,11,.2);">
                <div><strong>Client Activity Report</strong><span style="display: block; font-size: 0.75rem; color: #64748b; margin-top: 4px;">Custom range available</span></div>
                <button class="ac-btn ac-btn--accent ac-btn--sm">Download</button>
              </div>
            </div>
          </div>
        </div>
      </section>

      {* PANEL 5: NOTIFICATIONS *}
      <section class="ac-panel" id="panel-notifications">
        <div class="ac-card">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Recent Notifications</h3>
            <button class="ac-btn ac-btn--outline ac-btn--sm" style="font-size: 0.75rem;">Mark All Read</button>
          </div>
          <div class="ac-card__inner">
            <div class="ac-space-y-2">
              <div style="padding: 12px; background: rgba(59,130,246,.08); border-left: 4px solid #3b82f6; border-radius: 4px;">
                <strong>Service Renewal Upcoming</strong><br><span style="font-size: 0.75rem; color: #64748b;">Service #1004 renews in 7 days</span>
              </div>
              <div style="padding: 12px; background: rgba(239,68,68,.08); border-left: 4px solid #ef4444; border-radius: 4px;">
                <strong>Failed API Connection</strong><br><span style="font-size: 0.75rem; color: #64748b;">Remote API endpoint timeout</span>
              </div>
              <div style="padding: 12px; background: rgba(34,197,94,.08); border-left: 4px solid #22c55e; border-radius: 4px;">
                <strong>Database Sync Complete</strong><br><span style="font-size: 0.75rem; color: #64748b;">782 records synchronized successfully</span>
              </div>
              <div style="padding: 12px; background: rgba(34,197,94,.08); border-left: 4px solid #22c55e; border-radius: 4px;">
                <strong>License Updated</strong><br><span style="font-size: 0.75rem; color: #64748b;">Your license is now active</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      {* PANEL 6: ACTIVITY *}
      <section class="ac-panel" id="panel-activity">
        <div class="ac-card">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Audit Log</h3>
          </div>
          <div class="ac-card__inner">
            <ul class="ac-timeline">
              <li class="ac-timeline__item ac-timeline__item--success">
                <div class="ac-timeline__dot"></div>
                <div class="ac-timeline__body">
                  <strong>Settings Updated</strong> by Admin
                  <span class="ac-timeline__time">5 min ago</span>
                </div>
              </li>
              <li class="ac-timeline__item ac-timeline__item--info">
                <div class="ac-timeline__dot"></div>
                <div class="ac-timeline__body">
                  <strong>License Verification</strong> passed
                  <span class="ac-timeline__time">2 hours ago</span>
                </div>
              </li>
              <li class="ac-timeline__item ac-timeline__item--warning">
                <div class="ac-timeline__dot"></div>
                <div class="ac-timeline__body">
                  <strong>API Rate Limit</strong> warning triggered
                  <span class="ac-timeline__time">5 hours ago</span>
                </div>
              </li>
              <li class="ac-timeline__item ac-timeline__item--success">
                <div class="ac-timeline__dot"></div>
                <div class="ac-timeline__body">
                  <strong>Automatic Backup</strong> completed
                  <span class="ac-timeline__time">1 day ago</span>
                </div>
              </li>
              <li class="ac-timeline__item ac-timeline__item--neutral">
                <div class="ac-timeline__dot"></div>
                <div class="ac-timeline__body">
                  Module <strong>initialized</strong> successfully
                  <span class="ac-timeline__time">1 day ago</span>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </section>
      <section class="ac-panel" id="panel-settings">

        <div class="ac-card">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Module Configuration</h3>
          </div>
          <div class="ac-card__inner">
            <form id="ac-settings-form" novalidate>

              <fieldset class="ac-fieldset">
                <legend class="ac-fieldset__legend">General Settings</legend>
                <p class="ac-fieldset__hint">Basic parameters for module operation.</p>

                <div class="ac-field">
                  <label class="ac-field__label" for="f-name">Display Name</label>
                  <input class="ac-input" type="text" id="f-name" value="Addons Care" placeholder="Module name">
                </div>

                <div class="ac-field">
                  <label class="ac-field__label" for="f-license">License Key</label>
                  <div class="ac-input-wrap ac-input-wrap--valid">
                    <input class="ac-input" type="text" id="f-license" value="AC-DEMO-123456" placeholder="AC-XXXX-XXXX">
                    <i class="fa-solid fa-circle-check fa-lg"></i>
                  </div>
                  <span class="ac-field__msg ac-field__msg--ok">License is active and valid.</span>
                </div>

                <div class="ac-field">
                  <label class="ac-field__label" for="f-email">Admin Warning Email</label>
                  <input class="ac-input" type="email" id="f-email" placeholder="admin@example.com">
                </div>
              </fieldset>

              <fieldset class="ac-fieldset">
                <legend class="ac-fieldset__legend">Display Options</legend>

                <div class="ac-field">
                  <label class="ac-switch">
                    <input type="checkbox" class="ac-switch__input" checked>
                    <span class="ac-switch__slider"></span>
                    <span class="ac-switch__text">Enable client area widget</span>
                  </label>
                </div>

                <div class="ac-field">
                  <span class="ac-field__label">Widget Location</span>
                  <div class="ac-radio-group">
                    <label class="ac-radio-card">
                      <input type="radio" name="widget_loc" class="ac-radio-card__input" checked>
                      <span class="ac-radio-card__box">
                        <span class="ac-radio-card__dot"></span>
                        Dashboard Home
                      </span>
                    </label>
                    <label class="ac-radio-card">
                      <input type="radio" name="widget_loc" class="ac-radio-card__input">
                      <span class="ac-radio-card__box">
                        <span class="ac-radio-card__dot"></span>
                        Service Details Sidebar
                      </span>
                    </label>
                  </div>
                </div>

                <div class="ac-field">
                  <span class="ac-field__label">Notification Events</span>
                  <div class="ac-check-list">
                    <label class="ac-check">
                      <input type="checkbox" class="ac-check__input" checked>
                      <span class="ac-check__box"></span>
                      <span class="ac-check__text">Service Creation</span>
                    </label>
                    <label class="ac-check">
                      <input type="checkbox" class="ac-check__input" checked>
                      <span class="ac-check__box"></span>
                      <span class="ac-check__text">Service Auto-Suspension</span>
                    </label>
                    <label class="ac-check">
                      <input type="checkbox" class="ac-check__input">
                      <span class="ac-check__box"></span>
                      <span class="ac-check__text">Daily Sync Report</span>
                    </label>
                  </div>
                </div>
              </fieldset>

              <fieldset class="ac-fieldset">
                <legend class="ac-fieldset__legend">Advanced Configuration</legend>
                
                <div class="ac-accordion">
                  <div class="ac-accordion__item">
                    <button class="ac-accordion__trigger" type="button">
                      API Webhooks
                      <i class="fa-solid fa-chevron-down fa-lg"></i>
                    </button>
                    <div class="ac-accordion__content">
                      <p>Configure external webhook endpoints to receive POST payloads upon service events.</p>
                      <input class="ac-input ac-mt-2" type="text" placeholder="https://endpoint...">
                    </div>
                  </div>
                  <div class="ac-accordion__item">
                    <button class="ac-accordion__trigger" type="button">
                      Override Templates
                      <i class="fa-solid fa-chevron-down fa-lg"></i>
                    </button>
                    <div class="ac-accordion__content">
                      <label class="ac-switch">
                        <input type="checkbox" class="ac-switch__input">
                        <span class="ac-switch__slider"></span>
                        <span class="ac-switch__text">Use custom smarty templates from theme</span>
                      </label>
                    </div>
                  </div>
                </div>
              </fieldset>

              <fieldset class="ac-fieldset">
                <legend class="ac-fieldset__legend">Backup & Restore</legend>
                <label class="ac-dropzone">
                  <i class="fa-solid fa-cloud-arrow-up" style="font-size: 28px; margin-bottom: 8px;"></i>
                  <span class="ac-dropzone__text">Click to upload or drag & drop</span>
                  <span class="ac-dropzone__hint">JSON or XML up to 5MB</span>
                  <input type="file" accept=".json,.xml">
                </label>
              </fieldset>

            </form>
          </div>
          <div class="ac-card__bottom ac-card__bottom--actions">
            <button class="ac-btn ac-btn--ghost">Discard Changes</button>
            <button type="submit" form="ac-settings-form" class="ac-btn ac-btn--accent">Save Configuration</button>
          </div>
        </div>

      </section>

      {* PANEL: UTILITIES *}
      <section class="ac-panel" id="panel-utilities">

        {* Update Check Banner *}
        {if $updateInfo.update_available}
        <div class="ac-banner ac-banner--warn" role="alert">
          <div class="ac-banner__icon">
            <i class="fa-solid fa-triangle-exclamation" style="font-size: 20px;"></i>
          </div>
          <div class="ac-banner__text">
            <strong>Update available!</strong> &mdash; v{$updateInfo.latest_version} is available. See the Software Update card below for details.
          </div>
          <button class="ac-banner__dismiss" data-ac-dismiss="alert">&times;</button>
        </div>
        {elseif $updateInfo.error}
        <div class="ac-banner ac-banner--err" role="alert">
          <div class="ac-banner__icon">
            <i class="fa-solid fa-triangle-exclamation" style="font-size: 20px;"></i>
          </div>
          <div class="ac-banner__text">
            <strong>Update check failed</strong> &mdash; Could not reach the update server.
          </div>
          <button class="ac-banner__dismiss" data-ac-dismiss="alert">&times;</button>
        </div>
        {else}
        <div class="ac-banner ac-banner--ok" role="alert">
          <div class="ac-banner__icon">
            <i class="fa-regular fa-circle-check" style="font-size: 20px;"></i>
          </div>
          <div class="ac-banner__text">
            <strong>Module is up to date</strong> &mdash; v{$moduleVersion}
          </div>
          <button class="ac-banner__dismiss" data-ac-dismiss="alert">&times;</button>
        </div>
        {/if}

        {* System Info Row *}
        <div class="ac-duo ac-mt-6">
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">System Information</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4">
              <div class="ac-info-group">
                <span class="ac-info-label">PHP Version</span>
                <span class="ac-info-value">{$phpVersion}
                  {if $phpVersion >= '8.0'}<span class="ac-chip ac-chip--success" style="margin-left:6px;"><span class="ac-chip__dot"></span>Optimal</span>
                  {elseif $phpVersion >= '7.4'}<span class="ac-chip ac-chip--warning" style="margin-left:6px;"><span class="ac-chip__dot"></span>OK</span>
                  {else}<span class="ac-chip ac-chip--danger" style="margin-left:6px;"><span class="ac-chip__dot"></span>Outdated</span>
                  {/if}
                </span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">WHMCS Version</span>
                <span class="ac-info-value">{$whmcsVersion}</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Module Version</span>
                <span class="ac-info-value">{$moduleVersion}</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Server Hostname</span>
                <span class="ac-info-value">{$serverHostname}</span>
              </div>
            </div>
          </div>

          {* License Card *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">License Information</h3>
              <span class="ac-badge ac-badge--success">
                <i class="fa-solid fa-circle-check fa-lg"></i>
                Active
              </span>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4">
              <div class="ac-info-group">
                <span class="ac-info-label">License Code</span>
                <span class="ac-info-value ac-mono">{$licenseCode|default:'AC-DEMO-123456789'}</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Licensed To</span>
                <span class="ac-info-value">{$licensedTo|default:'Example Company Inc.'}</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Licensed Domain</span>
                <span class="ac-info-value">{$licensedDomain|default:'example.com'}</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Expiration Date</span>
                <span class="ac-info-value">{$licenseExpiration|default:'2026-12-31'}</span>
              </div>
            </div>
            <div class="ac-card__bottom ac-card__bottom--actions">
              <button class="ac-btn ac-btn--outline ac-btn--sm" data-demo-toast="warning">Repair License</button>
              <button class="ac-btn ac-btn--accent ac-btn--sm" data-demo-toast="success">Force Renew</button>
            </div>
          </div>
        </div>

        {* Updates and Support *}
        <div class="ac-duo ac-mt-6">
          {* Check for Updates Card *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Software Update</h3>
              {if $updateInfo.update_available}
                <span class="ac-badge ac-badge--warning">Update Available</span>
              {else}
                <span class="ac-badge ac-badge--success">Up to Date</span>
              {/if}
            </div>
            <div class="ac-card__inner">
              {if $updateInfo.update_available}
              <div class="ac-flex ac-items-center ac-gap-3 ac-mb-4">
                <strong style="font-size:1.125rem;">Version {$updateInfo.latest_version|default:'v4.0.0'}</strong>
                <span class="ac-text-dim">&mdash; Released on {$updateInfo.release_date|default:'Recently'}</span>
              </div>
              <div style="background:var(--ac-slate-50); border:1px solid var(--ac-slate-200); padding:var(--ac-sp-4); border-radius:var(--ac-r); max-height:160px; overflow-y:auto; line-height:1.5;">
                <strong style="display:block; margin-bottom:8px;">Changelog:</strong>
                {if $updateInfo.changelog}
                  {$updateInfo.changelog|nl2br}
                {else}
                  <ul style="list-style:disc; padding-left:1.5rem; color:var(--ac-text-dim); margin:0;">
                    <li>Added new dashboard widgets and reporting tools.</li>
                    <li>Fixed API synchronization timeout issue for large data sets.</li>
                    <li>Improved UI performance.</li>
                  </ul>
                {/if}
              </div>
              {else}
              <div class="ac-flex ac-flex-col ac-gap-3 ac-items-center ac-justify-center" style="padding:var(--ac-sp-6) 0; color:var(--ac-text-dim);">
                <i class="fa-regular fa-circle-check" style="font-size: 20px;"></i>
                <p style="margin:0;">You are running the latest version of AddonsCare.</p>
              </div>
              {/if}
            </div>
            <div class="ac-card__bottom ac-card__bottom--actions">
              {if $updateInfo.update_available && $updateInfo.download_url}
                <a href="{$updateInfo.download_url}" target="_blank" class="ac-btn ac-btn--accent">
                  <i class="fa-solid fa-cloud-arrow-down fa-lg"></i>
                  &nbsp;Download Update
                </a>
              {else}
                <button class="ac-btn ac-btn--outline" data-demo-toast="success">Check for Updates</button>
              {/if}
            </div>
          </div>

          {* Report Issue / Support *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Support & Troubleshooting</h3>
            </div>
            <div class="ac-card__inner">
              <p class="ac-mb-4" style="color:var(--ac-text-dim); line-height:1.5;">If you are experiencing issues with the module, you can directly report them to our support team. Your system details will be attached automatically.</p>
              
              <div class="ac-info-group ac-mb-2">
                <span class="ac-info-label" style="font-weight:600;">System Info Included:</span>
              </div>
              <div style="background:var(--ac-slate-50); border:1px solid var(--ac-slate-200); padding:var(--ac-sp-3) var(--ac-sp-4); border-radius:var(--ac-r);">
                <ul style="list-style-type:disc; padding-left:1.5rem; margin:0; color:var(--ac-text-dim); font-size:0.875rem;">
                  <li>PHP Version: {$phpVersion|default:'Unknown'}</li>
                  <li>WHMCS Version: {$whmcsVersion|default:'Unknown'}</li>
                  <li>Module Version: {$moduleVersion|default:'Unknown'}</li>
                  <li>License Code: {$licenseCode|default:'AC-DEMO'}</li>
                </ul>
              </div>
            </div>
            <div class="ac-card__bottom ac-card__bottom--actions">
              <a href="mailto:support@addonscare.com?subject=Issue%20Report%20-%20{$licensedDomain|default:'example.com'|escape:'url'}&body=Hello%20Support%2C%0A%0AI%20need%20help%20with%20the%20AddonsCare%20module.%0A%0A%5B%20Please%20describe%20your%20issue%20here%20%5D%0A%0A%0A---%20System%20Info%20---%0APHP%20Version%3A%20{$phpVersion|escape:'url'}%0AWHMCS%20Version%3A%20{$whmcsVersion|escape:'url'}%0AModule%20Version%3A%20{$moduleVersion|escape:'url'}%0ALicense%20Code%3A%20{$licenseCode|default:'AC-DEMO'|escape:'url'}%0ADomain%3A%20{$licensedDomain|default:'example.com'|escape:'url'}%0A-------------------%0A" class="ac-btn ac-btn--danger">
                <i class="fa-solid fa-bug fa-lg"></i>
                &nbsp;Report Issue
              </a>
            </div>
          </div>
        </div>

      </section>
      <section class="ac-panel" id="panel-toolkit">

        <div class="ac-trio">

          {* Loaders *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Loaders</h3>
            </div>
            <div class="ac-card__inner">
              <div class="ac-flex ac-items-center ac-gap-4 ac-mb-4">
                <div class="ac-ring ac-ring--sm"></div>
                <div class="ac-ring"></div>
                <div class="ac-ring ac-ring--lg"></div>
              </div>
              <div class="ac-loading-state">
                <div class="ac-ring"></div>
                <span>Connecting to API&hellip;</span>
              </div>
            </div>
          </div>

          {* Buttons *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Action States</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-3">
              <button class="ac-btn ac-btn--danger">Force Delete</button>
              <button class="ac-btn ac-btn--accent ac-btn--loading" disabled>Processing&hellip;</button>
              <button class="ac-btn ac-btn--outline">Secondary Action</button>
            </div>
          </div>

          {* Toasts *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Toast Triggers</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-3">
              <button class="ac-btn ac-btn--outline" data-demo-toast="warning">Test Warning</button>
              <button class="ac-btn ac-btn--outline" data-demo-toast="error">Test Error</button>
              <button class="ac-btn ac-btn--outline" data-demo-toast="success">Test Success</button>
              <div class="ac-notice ac-notice--error">
                <i class="fa-solid fa-circle-xmark fa-lg"></i>
                <div><strong>Connection Failed</strong><br>API endpoint unreachable.</div>
              </div>
            </div>
          </div>

        </div>

        <div class="ac-trio ac-mt-6">
          {* Skeletons *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Skeleton State</h3>
            </div>
            <div class="ac-card__inner">
              <div class="ac-flex ac-gap-3 ac-mb-4">
                <div class="ac-skeleton ac-skeleton--avatar"></div>
                <div style="flex: 1;">
                  <div class="ac-skeleton ac-skeleton--title"></div>
                  <div class="ac-skeleton ac-skeleton--text"></div>
                </div>
              </div>
              <div class="ac-skeleton ac-skeleton--text"></div>
              <div class="ac-skeleton ac-skeleton--text" style="width: 80%;"></div>
            </div>
          </div>

          {* Tooltips *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Tooltips</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4 ac-items-center ac-justify-center">
              <button class="ac-btn ac-btn--outline" type="button" data-ac-tooltip="This is an info tooltip">
                Hover me
              </button>
              <span data-ac-tooltip="Additional info here">
                <i class="fa-solid fa-circle-info" style="font-size: 20px;"></i>
              </span>
            </div>
          </div>

          {* Stepper *}
          <div class="ac-card">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Stepper</h3>
            </div>
            <div class="ac-card__inner">
              <div class="ac-stepper">
                <div class="ac-step ac-step--complete">
                  <div class="ac-step__circle"><i class="fa-solid fa-check fa-lg"></i></div>
                  <span class="ac-step__label">Setup</span>
                </div>
                <div class="ac-step ac-step--active">
                  <div class="ac-step__circle">2</div>
                  <span class="ac-step__label">Config</span>
                </div>
                <div class="ac-step">
                  <div class="ac-step__circle">3</div>
                  <span class="ac-step__label">Deploy</span>
                </div>
              </div>
            </div>
          </div>
        </div>

      </section>

      {* Scroll hint indicators — vertical and horizontal *}
      <div class="ac-scroll-hint ac-scroll-hint--vertical" id="ac-scroll-hint-vertical">
        <span class="ac-scroll-hint__text">Scroll down</span>
        <div class="ac-scroll-hint__arrow">
          <i class="fa-solid fa-chevron-down fa-lg"></i>
        </div>
      </div>

      <div class="ac-scroll-hint ac-scroll-hint--horizontal" id="ac-scroll-hint-horizontal">
        <span class="ac-scroll-hint__text">Scroll</span>
        <div class="ac-scroll-hint__arrow">
          <i class="fa-solid fa-chevron-right fa-lg"></i>
        </div>
      </div>

    </div>{* end .ac-content *}

  </div>{* end .ac-container *}

  {* ==========================================================================
     MODAL OVERLAY
     ========================================================================== *}
  <div class="ac-overlay" id="modal-sync" role="dialog" aria-modal="true" aria-labelledby="modal-title">
    <div class="ac-dialog">
      <div class="ac-dialog__head">
        <h3 id="modal-title">Confirm Database Sync</h3>
        <button class="ac-dialog__x" data-ac-close aria-label="Close">
          <i class="fa-solid fa-xmark fa-lg"></i>
        </button>
      </div>
      <div class="ac-dialog__body">
        <p>This will synchronize all local service records with the remote API. The process may take several minutes depending on record volume.</p>
        <div class="ac-notice ac-notice--warning ac-mt-4">
          <i class="fa-solid fa-circle-exclamation fa-lg"></i>
          <span>Ensure no billing runs are currently active before proceeding.</span>
        </div>
      </div>
      <div class="ac-dialog__foot">
        <button class="ac-btn ac-btn--ghost" data-ac-close>Cancel</button>
        <button class="ac-btn ac-btn--accent" data-ac-close data-demo-toast="success">Start Sync</button>
      </div>
    </div>
  </div>

  {* ==========================================================================
     TOAST CONTAINER
     ========================================================================== *}
  <div class="ac-toast-rack" id="ac-toast-container" aria-live="polite"></div>

</div>{* end .addonscare *}

