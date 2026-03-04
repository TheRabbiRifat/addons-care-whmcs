{* =============================================================================
   AddonsCare UI System — Admin Panel Template v3.1
   Tab-based navigation · Glassmorphism cards · Teal/Emerald palette
   ============================================================================= *}
<div class="addonscare" id="ac-app">
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
          <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><polyline points="23 4 23 10 17 10"/><polyline points="1 20 1 14 7 14"/><path d="M3.51 9a9 9 0 0114.85-3.36L23 10M1 14l4.64 4.36A9 9 0 0120.49 15"/></svg>
          Sync Now
        </button>
      </div>

      {* Tab Navigation *}
      <nav class="ac-tabs" role="tablist">
        <button class="ac-tab ac-tab--active" role="tab" aria-selected="true" aria-controls="panel-overview" data-ac-tab="panel-overview">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><rect x="3" y="3" width="7" height="7" rx="1"/><rect x="14" y="3" width="7" height="7" rx="1"/><rect x="3" y="14" width="7" height="7" rx="1"/><rect x="14" y="14" width="7" height="7" rx="1"/></svg>
          <span>Overview</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-services" data-ac-tab="panel-services">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M22 12h-4l-3 9L9 3l-3 9H2"/></svg>
          <span>Services</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-analytics" data-ac-tab="panel-analytics">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="12" y1="2" x2="12" y2="22"/><path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"/></svg>
          <span>Analytics</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-reports" data-ac-tab="panel-reports">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="12" y1="13" x2="12" y2="17"/><line x1="16" y1="15" x2="16" y2="17"/><line x1="8" y1="15" x2="8" y2="17"/></svg>
          <span>Reports</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-notifications" data-ac-tab="panel-notifications">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"/><path d="M13.73 21a2 2 0 0 1-3.46 0"/></svg>
          <span>Notifications</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-activity" data-ac-tab="panel-activity">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2z"/><polyline points="12 6 12 12 16 14"/></svg>
          <span>Activity</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-settings" data-ac-tab="panel-settings">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><circle cx="12" cy="12" r="3"/><path d="M19.4 15a1.65 1.65 0 00.33 1.82l.06.06a2 2 0 01-2.83 2.83l-.06-.06a1.65 1.65 0 00-1.82-.33 1.65 1.65 0 00-1 1.51V21a2 2 0 01-4 0v-.09A1.65 1.65 0 009 19.4a1.65 1.65 0 00-1.82.33l-.06.06a2 2 0 01-2.83-2.83l.06-.06A1.65 1.65 0 004.68 15a1.65 1.65 0 00-1.51-1H3a2 2 0 010-4h.09A1.65 1.65 0 004.6 9a1.65 1.65 0 00-.33-1.82l-.06-.06a2 2 0 012.83-2.83l.06.06A1.65 1.65 0 009 4.68a1.65 1.65 0 001-1.51V3a2 2 0 014 0v.09a1.65 1.65 0 001 1.51 1.65 1.65 0 001.82-.33l.06-.06a2 2 0 012.83 2.83l-.06.06A1.65 1.65 0 0019.4 9a1.65 1.65 0 001.51 1H21a2 2 0 010 4h-.09a1.65 1.65 0 00-1.51 1z"/></svg>
          <span>Settings</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-utilities" data-ac-tab="panel-utilities">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M9 21H5a2 2 0 01-2-2V5a2 2 0 012-2h4m6 0a2 2 0 012 2v14a2 2 0 01-2 2h-4m-5-7h14m-9-4v4m4-4v4"/></svg>
          <span>Utilities</span>
        </button>
        <button class="ac-tab" role="tab" aria-selected="false" aria-controls="panel-toolkit" data-ac-tab="panel-toolkit">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M14.7 6.3a1 1 0 000 1.4l1.6 1.6a1 1 0 001.4 0l3.77-3.77a6 6 0 01-7.94 7.94l-6.91 6.91a2.12 2.12 0 01-3-3l6.91-6.91a6 6 0 017.94-7.94l-3.76 3.76z"/></svg>
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
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M22 11.08V12a10 10 0 11-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
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
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4-4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 00-3-3.87"/><path d="M16 3.13a4 4 0 010 7.75"/></svg>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">{$services|count}</span>
              <span class="ac-stat-card__label">Active Services</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--up">+14</span>
          </div>

          <div class="ac-stat-card ac-stat-card--emerald">
            <div class="ac-stat-card__icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="12" y1="1" x2="12" y2="23"/><path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"/></svg>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">$12,840</span>
              <span class="ac-stat-card__label">Total Revenue</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--up">+8.2%</span>
          </div>

          <div class="ac-stat-card ac-stat-card--amber">
            <div class="ac-stat-card__icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/></svg>
            </div>
            <div class="ac-stat-card__data">
              <span class="ac-stat-card__value">17</span>
              <span class="ac-stat-card__label">Open Tickets</span>
            </div>
            <span class="ac-stat-card__trend ac-stat-card__trend--down">-3</span>
          </div>

          <div class="ac-stat-card ac-stat-card--rose">
            <div class="ac-stat-card__icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/></svg>
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
          <div class="ac-card ac-card--glass">
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

          <div class="ac-card ac-card--glass">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Quick Actions</h3>
            </div>
            <div class="ac-card__inner">
              <div class="ac-action-grid">
                <button class="ac-action-tile" data-ac-modal="#modal-sync">
                  <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><polyline points="23 4 23 10 17 10"/><polyline points="1 20 1 14 7 14"/><path d="M3.51 9a9 9 0 0114.85-3.36L23 10M1 14l4.64 4.36A9 9 0 0120.49 15"/></svg>
                  <span>Sync DB</span>
                </button>
                <button class="ac-action-tile" data-demo-toast="info">
                  <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/></svg>
                  <span>Export</span>
                </button>
                <button class="ac-action-tile" data-demo-toast="success">
                  <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><rect x="2" y="3" width="20" height="14" rx="2" ry="2"/><line x1="8" y1="21" x2="16" y2="21"/><line x1="12" y1="17" x2="12" y2="21"/></svg>
                  <span>Audit Log</span>
                </button>
                <button class="ac-action-tile" data-demo-toast="warning">
                  <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
                  <span>Notify</span>
                </button>
              </div>
            </div>
          </div>
        </div>

        {* Progress / Quota *}
        <div class="ac-card ac-card--glass ac-mt-6">
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
        <div class="ac-card ac-card--glass">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Managed Services</h3>
            <div class="ac-card__toolbar">
              <span class="ac-pill ac-pill--count">{$services|count} records</span>
              <button class="ac-btn ac-btn--outline ac-btn--sm" data-demo-toast="info">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
                Export
              </button>
            </div>
          </div>
          <div class="ac-filter-bar">
            <div class="ac-filter-bar__search">
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="8"/><line x1="21" y1="21" x2="16.65" y2="16.65"/></svg>
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
                          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="1"/><circle cx="12" cy="5" r="1"/><circle cx="12" cy="19" r="1"/></svg>
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
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="15 18 9 12 15 6"/></svg>
              </button>
              <button class="ac-pager__btn ac-pager__btn--current">1</button>
              <button class="ac-pager__btn">2</button>
              <button class="ac-pager__btn">3</button>
              <span class="ac-pager__dots">&hellip;</span>
              <button class="ac-pager__btn">8</button>
              <button class="ac-pager__btn">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="9 18 15 12 9 6"/></svg>
              </button>
            </nav>
          </div>
        </div>
        {else}
        <div class="ac-card ac-card--glass">
          <div class="ac-card__inner">
            <div class="ac-empty">
              <div class="ac-empty__visual">
                <svg width="56" height="56" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" opacity=".35"><path d="M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z"/><polyline points="3.27 6.96 12 12.01 20.73 6.96"/><line x1="12" y1="22.08" x2="12" y2="12"/></svg>
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
        <div class="ac-card ac-card--glass">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Performance Metrics</h3>
          </div>
          <div class="ac-card__inner">
            <div class="ac-stat-row">
              <div class="ac-stat-card ac-stat-card--teal">
                <div class="ac-stat-card__icon">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"/><polyline points="9 22 9 12 15 12 15 22"/></svg>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">99.8%</span>
                  <span class="ac-stat-card__label">Uptime</span>
                </div>
              </div>
              <div class="ac-stat-card ac-stat-card--emerald">
                <div class="ac-stat-card__icon">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M12 2a10 10 0 1 0 10 10H12z"/></svg>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">2.34s</span>
                  <span class="ac-stat-card__label">Avg Response Time</span>
                </div>
              </div>
              <div class="ac-stat-card ac-stat-card--amber">
                <div class="ac-stat-card__icon">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>
                </div>
                <div class="ac-stat-card__data">
                  <span class="ac-stat-card__value">2,847</span>
                  <span class="ac-stat-card__label">API Calls/Hour</span>
                </div>
              </div>
              <div class="ac-stat-card ac-stat-card--rose">
                <div class="ac-stat-card__icon">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
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
        <div class="ac-card ac-card--glass">
          <div class="ac-card__top">
            <h3 class="ac-card__title">Available Reports</h3>
            <button class="ac-btn ac-btn--outline ac-btn--sm">
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>
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
        <div class="ac-card ac-card--glass">
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
        <div class="ac-card ac-card--glass">
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

        <div class="ac-card ac-card--glass">
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
                    <svg class="ac-input-wrap__icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M22 11.08V12a10 10 0 11-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
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
                      <svg class="ac-accordion__icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="6 9 12 15 18 9"/></svg>
                    </button>
                    <div class="ac-accordion__content">
                      <p>Configure external webhook endpoints to receive POST payloads upon service events.</p>
                      <input class="ac-input ac-mt-2" type="text" placeholder="https://endpoint...">
                    </div>
                  </div>
                  <div class="ac-accordion__item">
                    <button class="ac-accordion__trigger" type="button">
                      Override Templates
                      <svg class="ac-accordion__icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="6 9 12 15 18 9"/></svg>
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
                  <svg class="ac-dropzone__icon" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/></svg>
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

        {* System Info Row *}
        <div class="ac-duo">
          <div class="ac-card ac-card--glass">
            <div class="ac-card__top">
              <h3 class="ac-card__title">System Information</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4">
              <div class="ac-info-group">
                <span class="ac-info-label">PHP Version</span>
                <span class="ac-info-value">{php_version}</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">WHMCS Version</span>
                <span class="ac-info-value">8.7.2</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Module Version</span>
                <span class="ac-info-value">3.1.0</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Server Hostname</span>
                <span class="ac-info-value">server.example.com</span>
              </div>
            </div>
          </div>

          {* License Card *}
          <div class="ac-card ac-card--glass">
            <div class="ac-card__top">
              <h3 class="ac-card__title">License Information</h3>
              <span class="ac-badge ac-badge--success">
                <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3"><polyline points="20 6 9 17 4 12"/></svg>
                Active
              </span>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4">
              <div class="ac-info-group">
                <span class="ac-info-label">License Code</span>
                <span class="ac-info-value ac-mono">AC-DEMO-123456789</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Licensed To</span>
                <span class="ac-info-value">Example Company Inc.</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Licensed Domain</span>
                <span class="ac-info-value">example.com</span>
              </div>
              <div class="ac-info-group">
                <span class="ac-info-label">Expiration Date</span>
                <span class="ac-info-value">2025-12-31</span>
              </div>
            </div>
            <div class="ac-card__bottom ac-card__bottom--actions">
              <button class="ac-btn ac-btn--outline ac-btn--sm">Repair License</button>
              <button class="ac-btn ac-btn--accent ac-btn--sm" data-demo-toast="success">Force Renew</button>
            </div>
          </div>
        </div>

      </section>
      <section class="ac-panel" id="panel-toolkit">

        <div class="ac-trio">

          {* Loaders *}
          <div class="ac-card ac-card--glass">
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
          <div class="ac-card ac-card--glass">
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
          <div class="ac-card ac-card--glass">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Toast Triggers</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-3">
              <button class="ac-btn ac-btn--outline" data-demo-toast="warning">Test Warning</button>
              <button class="ac-btn ac-btn--outline" data-demo-toast="error">Test Error</button>
              <button class="ac-btn ac-btn--outline" data-demo-toast="success">Test Success</button>
              <div class="ac-notice ac-notice--error">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><circle cx="12" cy="12" r="10"/><line x1="15" y1="9" x2="9" y2="15"/><line x1="9" y1="9" x2="15" y2="15"/></svg>
                <div><strong>Connection Failed</strong><br>API endpoint unreachable.</div>
              </div>
            </div>
          </div>

        </div>

        <div class="ac-trio ac-mt-6">
          {* Skeletons *}
          <div class="ac-card ac-card--glass">
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
          <div class="ac-card ac-card--glass">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Tooltips</h3>
            </div>
            <div class="ac-card__inner ac-flex ac-flex-col ac-gap-4 ac-items-center ac-justify-center">
              <button class="ac-btn ac-btn--outline" type="button" data-ac-tooltip="This is an info tooltip">
                Hover me
              </button>
              <span data-ac-tooltip="Additional info here">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="12" y1="16" x2="12" y2="12"/><line x1="12" y1="8" x2="12.01" y2="8"/></svg>
              </span>
            </div>
          </div>

          {* Stepper *}
          <div class="ac-card ac-card--glass">
            <div class="ac-card__top">
              <h3 class="ac-card__title">Stepper</h3>
            </div>
            <div class="ac-card__inner">
              <div class="ac-stepper">
                <div class="ac-step ac-step--complete">
                  <div class="ac-step__circle"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3"><polyline points="20 6 9 17 4 12"/></svg></div>
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
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><polyline points="6 9 12 15 18 9"/></svg>
        </div>
      </div>

      <div class="ac-scroll-hint ac-scroll-hint--horizontal" id="ac-scroll-hint-horizontal">
        <span class="ac-scroll-hint__text">Scroll</span>
        <div class="ac-scroll-hint__arrow">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><polyline points="9 6 15 12 9 18"/></svg>
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
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
        </button>
      </div>
      <div class="ac-dialog__body">
        <p>This will synchronize all local service records with the remote API. The process may take several minutes depending on record volume.</p>
        <div class="ac-notice ac-notice--warning ac-mt-4">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
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
