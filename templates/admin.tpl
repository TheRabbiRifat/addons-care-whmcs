{* =============================================================================
   Addons Care - Admin Panel Template
   Showcases every component from addonscare.css
   ============================================================================= *}
<div class="addonscare" id="ac-app">

  {* =========================================================================
     LAYOUT: Sidebar + Main wrapper
     ========================================================================= *}
  <div class="ac-layout">

    {* -----------------------------------------------------------------------
       SIDEBAR (Navigation component)
       ----------------------------------------------------------------------- *}
    <aside class="ac-sidebar" id="ac-sidebar">
      <div class="ac-sidebar__brand">
        <div class="ac-sidebar__logo">AC</div>
        <span class="ac-sidebar__brand-name">Addons Care</span>
      </div>

      <nav class="ac-sidebar__nav">
        <div class="ac-nav-group">
          <span class="ac-nav-group__label">Main</span>
          <a href="{$modulelink}" class="ac-nav-item ac-nav-item--active">
            <span class="ac-nav-item__icon">&#9632;</span>
            <span class="ac-nav-item__label">Dashboard</span>
          </a>
          <a href="#" class="ac-nav-item">
            <span class="ac-nav-item__icon">&#9670;</span>
            <span class="ac-nav-item__label">Services</span>
          </a>
          <a href="#" class="ac-nav-item ac-nav-item--has-sub" data-ac-navsub>
            <span class="ac-nav-item__icon">&#9654;</span>
            <span class="ac-nav-item__label">Management</span>
            <span class="ac-nav-item__arrow">&#8250;</span>
          </a>
          <div class="ac-sub-nav">
            <a href="#" class="ac-sub-nav__item">Clients</a>
            <a href="#" class="ac-sub-nav__item">Invoices</a>
            <a href="#" class="ac-sub-nav__item">Products</a>
          </div>
          <a href="#" class="ac-nav-item ac-nav-item--has-sub" data-ac-navsub>
            <span class="ac-nav-item__icon">&#9728;</span>
            <span class="ac-nav-item__label">Reports</span>
            <span class="ac-nav-item__arrow">&#8250;</span>
          </a>
          <div class="ac-sub-nav">
            <a href="#" class="ac-sub-nav__item">Revenue</a>
            <a href="#" class="ac-sub-nav__item">Activity</a>
          </div>
        </div>

        <div class="ac-nav-group">
          <span class="ac-nav-group__label">Settings</span>
          <a href="#" class="ac-nav-item">
            <span class="ac-nav-item__icon">&#9881;</span>
            <span class="ac-nav-item__label">General</span>
          </a>
          <a href="#" class="ac-nav-item">
            <span class="ac-nav-item__icon">&#128274;</span>
            <span class="ac-nav-item__label">Security</span>
          </a>
        </div>
      </nav>

      <div class="ac-sidebar__footer">
        <div class="ac-sidebar__user">
          <div class="ac-sidebar__avatar">A</div>
          <div class="ac-sidebar__user-info">
            <span class="ac-sidebar__user-name">Admin</span>
            <span class="ac-sidebar__user-role">Administrator</span>
          </div>
        </div>
      </div>

      <button class="ac-sidebar__collapse-btn" id="ac-sidebar-toggle" data-ac-toggle="sidebar" title="Toggle sidebar">
        &#8249;
      </button>
    </aside>
    {* End sidebar *}

    {* -----------------------------------------------------------------------
       MAIN CONTENT AREA
       ----------------------------------------------------------------------- *}
    <div class="ac-main">

      {* -----------------------------------------------------------------------
         HEADER / TOPBAR (Navigation component)
         ----------------------------------------------------------------------- *}
      <header class="ac-header">
        <div class="ac-header__left">
          <button class="ac-header__mobile-toggle ac-btn ac-btn--ghost ac-btn--sm" id="ac-mobile-toggle" data-ac-toggle="sidebar">
            &#9776;
          </button>
          <div class="ac-header__search">
            <span class="ac-header__search-icon">&#128269;</span>
            <input class="ac-header__search-input" type="search" placeholder="Search...">
          </div>
        </div>
        <div class="ac-header__right">

          {* Toast trigger buttons *}
          <button class="ac-btn ac-btn--ghost ac-btn--sm" data-demo-toast="success">&#10003; Success</button>
          <button class="ac-btn ac-btn--ghost ac-btn--sm" data-demo-toast="error">&#9888; Error</button>
          <button class="ac-btn ac-btn--ghost ac-btn--sm" data-demo-toast="warning">&#9888; Warning</button>
          <button class="ac-btn ac-btn--ghost ac-btn--sm" data-demo-toast="info">&#9432; Info</button>

          {* Notifications dropdown *}
          <div class="ac-dropdown">
            <button class="ac-btn ac-btn--ghost ac-btn--sm ac-dropdown__trigger" data-ac-dropdown>
              &#128276;
              <span class="ac-badge ac-badge--danger ac-badge--solid" style="font-size:10px;padding:2px 5px;">3</span>
            </button>
            <div class="ac-dropdown__menu ac-dropdown__menu--right">
              <div class="ac-dropdown__header">Notifications</div>
              <a href="#" class="ac-dropdown__item">
                <span class="ac-status__dot ac-status__dot--success"></span>
                New order received
              </a>
              <a href="#" class="ac-dropdown__item">
                <span class="ac-status__dot ac-status__dot--warning"></span>
                Payment overdue
              </a>
              <a href="#" class="ac-dropdown__item">
                <span class="ac-status__dot ac-status__dot--danger"></span>
                Server alert
              </a>
              <div class="ac-dropdown__divider"></div>
              <a href="#" class="ac-dropdown__item">View all notifications</a>
            </div>
          </div>

          {* Profile dropdown *}
          <div class="ac-dropdown">
            <button class="ac-btn ac-btn--ghost ac-btn--sm ac-dropdown__trigger" data-ac-dropdown>
              <div style="width:28px;height:28px;border-radius:50%;background:var(--ac-primary);color:#fff;display:flex;align-items:center;justify-content:center;font-size:12px;font-weight:600;">A</div>
              &#8250;
            </button>
            <div class="ac-dropdown__menu ac-dropdown__menu--right">
              <a href="#" class="ac-dropdown__item">My Profile</a>
              <a href="#" class="ac-dropdown__item">Settings</a>
              <div class="ac-dropdown__divider"></div>
              <a href="#" class="ac-dropdown__item ac-dropdown__item--danger">Logout</a>
            </div>
          </div>

        </div>
      </header>
      {* End header *}

      {* -----------------------------------------------------------------------
         PAGE CONTENT
         ----------------------------------------------------------------------- *}
      <div class="ac-content">
        <div class="ac-page">

          {* Breadcrumb *}
          <nav class="ac-breadcrumb">
            <a href="#" class="ac-breadcrumb__item">Home</a>
            <span class="ac-breadcrumb__sep">&#8250;</span>
            <a href="#" class="ac-breadcrumb__item">Addons Care</a>
            <span class="ac-breadcrumb__sep">&#8250;</span>
            <span class="ac-breadcrumb__item ac-breadcrumb__item--active">Dashboard</span>
          </nav>

          {* Page header *}
          <div class="ac-page-header">
            <div class="ac-page-header__info">
              <h1 class="ac-page-header__title">Addons Care Dashboard</h1>
              <p class="ac-page-header__desc">Complete component showcase — all UI elements in one view.</p>
            </div>
            <div class="ac-page-header__actions">
              <button class="ac-btn ac-btn--secondary" data-ac-modal="#ac-confirm-modal">Delete</button>
              <button class="ac-btn ac-btn--primary" data-ac-modal="#ac-demo-modal">+ Add Service</button>
            </div>
          </div>

          {* Info alert *}
          <div class="ac-alert ac-alert--info ac-d-flex ac-align-items-center ac-gap-2" role="alert">
            <strong>Welcome!</strong> This panel demonstrates every Addons Care component.
            <button class="ac-alert__close ac-ml-auto" data-ac-dismiss="alert">&times;</button>
          </div>

          {* =================================================================
             STAT CARDS (Card component)
             ================================================================= *}
          <div class="ac-dashboard-grid ac-mt-6">
            {foreach $stats as $stat}
            <div class="ac-stat-card">
              <div class="ac-stat-card__icon ac-stat-card__icon--{$stat.color}">
                {if $stat.color == 'primary'}&#9830;{elseif $stat.color == 'success'}&#10003;{elseif $stat.color == 'warning'}&#9888;{else}&#8635;{/if}
              </div>
              <div class="ac-stat-card__value">{$stat.value}</div>
              <div class="ac-stat-card__label">{$stat.label}</div>
              <div class="ac-stat-card__change {if $stat.up}ac-stat-card__change--up{else}ac-stat-card__change--down{/if}">
                {if $stat.up}&#8593;{else}&#8595;{/if} {$stat.change}
              </div>
            </div>
            {/foreach}
          </div>

          {* =================================================================
             TABS (Tabs component) - wrapping the main data table
             ================================================================= *}
          <div class="ac-card ac-mt-6">
            <div class="ac-card__header">
              <h2 class="ac-card__title">Services</h2>
              <div class="ac-card__actions">
                <span class="ac-badge ac-badge--primary">{$services|count} records</span>
              </div>
            </div>
            <div class="ac-card__body ac-p-0">

              <div class="ac-tabs" role="tablist">
                <div class="ac-tabs__nav">
                  <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="tab-all">All Services</button>
                  <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="tab-active">Active</button>
                  <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="tab-pending">Pending</button>
                  <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="tab-inactive">Inactive</button>
                </div>

                <div class="ac-tabs__panels">

                  {* All Services tab *}
                  <div class="ac-tabs__panel ac-tabs__panel--active" id="tab-all" role="tabpanel">
                    {* Table toolbar *}
                    <div class="ac-table-toolbar">
                      <div class="ac-table-toolbar__left">
                        <div class="ac-input-group ac-input-group--sm">
                          <span class="ac-input-group__addon">&#128269;</span>
                          <input class="ac-form-control" type="search" placeholder="Search services...">
                        </div>
                        <div class="ac-dropdown">
                          <button class="ac-btn ac-btn--secondary ac-btn--sm ac-dropdown__trigger" data-ac-dropdown>
                            Filter &#8595;
                          </button>
                          <div class="ac-dropdown__menu">
                            <a href="#" class="ac-dropdown__item">All</a>
                            <a href="#" class="ac-dropdown__item">Active only</a>
                            <a href="#" class="ac-dropdown__item">Pending only</a>
                            <a href="#" class="ac-dropdown__item ac-dropdown__item--danger">Suspended</a>
                          </div>
                        </div>
                      </div>
                      <div class="ac-table-toolbar__right">
                        <button class="ac-btn ac-btn--ghost ac-btn--sm">&#8635; Refresh</button>
                        <button class="ac-btn ac-btn--secondary ac-btn--sm">Export CSV</button>
                      </div>
                    </div>

                    {* Bulk action bar *}
                    <div class="ac-table-bulk-bar" id="ac-bulk-bar" style="display:none;">
                      <span class="ac-table-bulk-bar__count" id="ac-bulk-count">0 selected</span>
                      <button class="ac-btn ac-btn--secondary ac-btn--sm">Suspend</button>
                      <button class="ac-btn ac-btn--secondary ac-btn--sm">Renew</button>
                      <button class="ac-btn ac-btn--danger ac-btn--sm">Delete</button>
                    </div>

                    {* Data table *}
                    <div class="ac-table-wrap">
                      <table class="ac-table ac-table--hoverable ac-table--striped">
                        <thead>
                          <tr>
                            <th style="width:40px;"><input type="checkbox" class="ac-table-select-all" id="select-all" title="Select all"></th>
                            <th class="ac-sort" data-col="id">ID</th>
                            <th class="ac-sort ac-sort--asc" data-col="client">Client</th>
                            <th class="ac-sort" data-col="product">Product</th>
                            <th>Status</th>
                            <th class="ac-sort" data-col="amount">Amount</th>
                            <th>Next Due</th>
                            <th style="width:100px;">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                          {foreach $services as $svc}
                          <tr>
                            <td><input type="checkbox" class="ac-table-row-check" value="{$svc.id}"></td>
                            <td data-label="ID"><code>#{$svc.id}</code></td>
                            <td data-label="Client">{$svc.client}</td>
                            <td data-label="Product">{$svc.product}</td>
                            <td data-label="Status">
                              {if $svc.status == 'active'}
                                <span class="ac-badge ac-badge--success ac-badge--soft">Active</span>
                              {elseif $svc.status == 'pending'}
                                <span class="ac-badge ac-badge--warning ac-badge--soft">Pending</span>
                              {elseif $svc.status == 'suspended'}
                                <span class="ac-badge ac-badge--danger ac-badge--soft">Suspended</span>
                              {else}
                                <span class="ac-badge ac-badge--neutral ac-badge--soft">Inactive</span>
                              {/if}
                            </td>
                            <td data-label="Amount">{$svc.amount}</td>
                            <td data-label="Next Due">{$svc.next_due}</td>
                            <td>
                              <div class="ac-dropdown">
                                <button class="ac-btn ac-btn--ghost ac-btn--sm ac-dropdown__trigger" data-ac-dropdown title="Actions">
                                  &bull;&bull;&bull;
                                </button>
                                <div class="ac-dropdown__menu ac-dropdown__menu--right">
                                  <a href="#" class="ac-dropdown__item" data-ac-modal="#ac-demo-modal">View</a>
                                  <a href="#" class="ac-dropdown__item">Edit</a>
                                  <a href="#" class="ac-dropdown__item">Renew</a>
                                  <div class="ac-dropdown__divider"></div>
                                  <a href="#" class="ac-dropdown__item ac-dropdown__item--danger" data-action-delete="{$svc.id}">Delete</a>
                                </div>
                              </div>
                            </td>
                          </tr>
                          {/foreach}
                        </tbody>
                      </table>
                    </div>

                    {* Pagination *}
                    <div class="ac-d-flex ac-justify-content-between ac-align-items-center ac-p-4">
                      <span class="ac-text-sm ac-text-muted">Showing 1-6 of 48 results</span>
                      <nav class="ac-pagination" aria-label="Table pagination">
                        <ul class="ac-pagination__list">
                          <li class="ac-pagination__item ac-pagination__item--disabled">
                            <button class="ac-pagination__btn" disabled>&#8249;</button>
                          </li>
                          <li class="ac-pagination__item ac-pagination__item--active">
                            <button class="ac-pagination__btn">1</button>
                          </li>
                          <li class="ac-pagination__item">
                            <button class="ac-pagination__btn">2</button>
                          </li>
                          <li class="ac-pagination__item">
                            <button class="ac-pagination__btn">3</button>
                          </li>
                          <li class="ac-pagination__item ac-pagination__item--ellipsis">
                            <span class="ac-pagination__btn">...</span>
                          </li>
                          <li class="ac-pagination__item">
                            <button class="ac-pagination__btn">8</button>
                          </li>
                          <li class="ac-pagination__item">
                            <button class="ac-pagination__btn">&#8250;</button>
                          </li>
                        </ul>
                      </nav>
                    </div>
                  </div>
                  {* End tab-all *}

                  <div class="ac-tabs__panel" id="tab-active" role="tabpanel">
                    <div class="ac-p-4 ac-text-muted">Showing active services only.</div>
                  </div>
                  <div class="ac-tabs__panel" id="tab-pending" role="tabpanel">
                    <div class="ac-p-4 ac-text-muted">Showing pending services only.</div>
                  </div>
                  <div class="ac-tabs__panel" id="tab-inactive" role="tabpanel">
                    {* Empty state pattern *}
                    <div class="ac-empty-state ac-empty-state--compact">
                      <div class="ac-empty-state__art">&#128230;</div>
                      <h3 class="ac-empty-state__title">No inactive services</h3>
                      <p class="ac-empty-state__desc">All services are currently in good standing.</p>
                    </div>
                  </div>

                </div>{* end panels *}
              </div>{* end tabs *}
            </div>{* end card body *}
          </div>{* end card *}

          {* =================================================================
             TWO-COLUMN LAYOUT
             ================================================================= *}
          <div class="ac-layout-2col ac-mt-6">

            {* Left column — Settings form *}
            <div class="ac-d-flex ac-flex-col ac-gap-4">

              {* FORM COMPONENT *}
              <div class="ac-card">
                <div class="ac-card__header">
                  <h2 class="ac-card__title">Module Settings</h2>
                </div>
                <div class="ac-card__body">
                  <form id="ac-settings-form" novalidate>

                    <div class="ac-form-section">
                      <h4 class="ac-form-section__title">General</h4>
                      <p class="ac-form-section__desc">Basic module options.</p>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label" for="f-module-name">Module Name</label>
                      <input class="ac-form-control" type="text" id="f-module-name" value="Addons Care" placeholder="Enter module name">
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label" for="f-license">License Key</label>
                      <div class="ac-input-group">
                        <span class="ac-input-group__addon">&#128273;</span>
                        <input class="ac-form-control ac-is-valid" type="text" id="f-license" placeholder="AC-XXXX-XXXX">
                      </div>
                      <span class="ac-form-feedback ac-form-feedback--valid">License is valid.</span>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label" for="f-email">Contact Email <span class="ac-text-danger">*</span></label>
                      <input class="ac-form-control ac-is-invalid" type="email" id="f-email" value="notvalid" required>
                      <span class="ac-form-feedback">Please enter a valid email address.</span>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label" for="f-plan">Billing Plan</label>
                      <select class="ac-form-control" id="f-plan">
                        <option>Monthly</option>
                        <option>Quarterly</option>
                        <option selected>Annual</option>
                      </select>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label" for="f-brand-color">Brand Color</label>
                      <div class="ac-input-icon-wrap">
                        <span class="ac-input-icon">&#9632;</span>
                        <input class="ac-form-control ac-form-control--icon-left" type="text" id="f-brand-color" placeholder="#6366f1">
                      </div>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label" for="f-notes">Notes</label>
                      <textarea class="ac-form-control" id="f-notes" rows="3" placeholder="Optional notes..."></textarea>
                    </div>

                    <div class="ac-form-section">
                      <h4 class="ac-form-section__title">Features</h4>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-toggle">
                        <input type="checkbox" class="ac-toggle__input" checked>
                        <span class="ac-toggle__track"></span>
                        <span class="ac-toggle__label">Enable demo data</span>
                      </label>
                    </div>
                    <div class="ac-form-group">
                      <label class="ac-toggle">
                        <input type="checkbox" class="ac-toggle__input">
                        <span class="ac-toggle__track"></span>
                        <span class="ac-toggle__label">Dark mode</span>
                      </label>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label">Notifications</label>
                      <div class="ac-d-flex ac-flex-col ac-gap-2">
                        <label class="ac-checkbox">
                          <input type="checkbox" class="ac-checkbox__input" checked>
                          <span class="ac-checkbox__label">Email alerts</span>
                        </label>
                        <label class="ac-checkbox">
                          <input type="checkbox" class="ac-checkbox__input" checked>
                          <span class="ac-checkbox__label">In-app notifications</span>
                        </label>
                        <label class="ac-checkbox">
                          <input type="checkbox" class="ac-checkbox__input">
                          <span class="ac-checkbox__label">SMS alerts</span>
                        </label>
                      </div>
                    </div>

                    <div class="ac-form-group">
                      <label class="ac-label">Priority Level</label>
                      <div class="ac-d-flex ac-flex-col ac-gap-2">
                        <label class="ac-radio">
                          <input type="radio" name="priority" class="ac-radio__input">
                          <span class="ac-radio__label">Low</span>
                        </label>
                        <label class="ac-radio">
                          <input type="radio" name="priority" class="ac-radio__input" checked>
                          <span class="ac-radio__label">Medium</span>
                        </label>
                        <label class="ac-radio">
                          <input type="radio" name="priority" class="ac-radio__input">
                          <span class="ac-radio__label">High</span>
                        </label>
                      </div>
                    </div>

                  </form>
                </div>
                <div class="ac-card__footer">
                  <button class="ac-btn ac-btn--secondary">Reset</button>
                  <button type="submit" form="ac-settings-form" class="ac-btn ac-btn--primary">Save Settings</button>
                </div>
              </div>
              {* End form card *}

              {* PROGRESS BARS (Patterns component) *}
              <div class="ac-card">
                <div class="ac-card__header">
                  <h2 class="ac-card__title">Progress Bars</h2>
                </div>
                <div class="ac-card__body ac-d-flex ac-flex-col ac-gap-4">
                  <div>
                    <div class="ac-d-flex ac-justify-content-between ac-text-sm ac-mb-1">
                      <span>Disk Usage</span><span>72%</span>
                    </div>
                    <div class="ac-progress-bar"><div class="ac-progress-bar__fill ac-progress-bar__fill--warning" style="width:72%"></div></div>
                  </div>
                  <div>
                    <div class="ac-d-flex ac-justify-content-between ac-text-sm ac-mb-1">
                      <span>Bandwidth</span><span>45%</span>
                    </div>
                    <div class="ac-progress-bar"><div class="ac-progress-bar__fill ac-progress-bar__fill--success" style="width:45%"></div></div>
                  </div>
                  <div>
                    <div class="ac-d-flex ac-justify-content-between ac-text-sm ac-mb-1">
                      <span>CPU Load</span><span>89%</span>
                    </div>
                    <div class="ac-progress-bar"><div class="ac-progress-bar__fill ac-progress-bar__fill--danger" style="width:89%"></div></div>
                  </div>
                  <div>
                    <div class="ac-d-flex ac-justify-content-between ac-text-sm ac-mb-1">
                      <span>Loading (indeterminate)</span>
                    </div>
                    <div class="ac-progress-bar"><div class="ac-progress-bar__fill ac-progress-bar__fill--indeterminate"></div></div>
                  </div>
                </div>
              </div>

            </div>
            {* End left column *}

            {* Right column *}
            <div class="ac-d-flex ac-flex-col ac-gap-4">

              {* BUTTONS (Button component) *}
              <div class="ac-card">
                <div class="ac-card__header">
                  <h2 class="ac-card__title">Buttons</h2>
                </div>
                <div class="ac-card__body ac-d-flex ac-flex-col ac-gap-4">
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Variants</p>
                    <div class="ac-d-flex ac-flex-wrap ac-gap-2">
                      <button class="ac-btn ac-btn--primary">Primary</button>
                      <button class="ac-btn ac-btn--secondary">Secondary</button>
                      <button class="ac-btn ac-btn--danger">Danger</button>
                      <button class="ac-btn ac-btn--ghost">Ghost</button>
                      <button class="ac-btn ac-btn--accent">Accent</button>
                      <button class="ac-btn ac-btn--link">Link</button>
                    </div>
                  </div>
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Sizes</p>
                    <div class="ac-d-flex ac-align-items-center ac-gap-2">
                      <button class="ac-btn ac-btn--primary ac-btn--sm">Small</button>
                      <button class="ac-btn ac-btn--primary">Medium</button>
                      <button class="ac-btn ac-btn--primary ac-btn--lg">Large</button>
                    </div>
                  </div>
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">States</p>
                    <div class="ac-d-flex ac-flex-wrap ac-gap-2">
                      <button class="ac-btn ac-btn--primary ac-btn--loading" disabled>Loading</button>
                      <button class="ac-btn ac-btn--secondary" disabled>Disabled</button>
                    </div>
                  </div>
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Button group</p>
                    <div class="ac-btn-group">
                      <button class="ac-btn ac-btn--secondary">Day</button>
                      <button class="ac-btn ac-btn--secondary ac-btn--active">Week</button>
                      <button class="ac-btn ac-btn--secondary">Month</button>
                    </div>
                  </div>
                </div>
              </div>

              {* BADGES + STATUS (Alert component) *}
              <div class="ac-card">
                <div class="ac-card__header">
                  <h2 class="ac-card__title">Badges &amp; Status</h2>
                </div>
                <div class="ac-card__body ac-d-flex ac-flex-col ac-gap-4">
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Soft badges</p>
                    <div class="ac-d-flex ac-flex-wrap ac-gap-2">
                      <span class="ac-badge ac-badge--primary">Primary</span>
                      <span class="ac-badge ac-badge--success">Success</span>
                      <span class="ac-badge ac-badge--warning">Warning</span>
                      <span class="ac-badge ac-badge--danger">Danger</span>
                      <span class="ac-badge ac-badge--info">Info</span>
                      <span class="ac-badge ac-badge--neutral">Neutral</span>
                    </div>
                  </div>
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Solid badges</p>
                    <div class="ac-d-flex ac-flex-wrap ac-gap-2">
                      <span class="ac-badge ac-badge--primary ac-badge--solid">Primary</span>
                      <span class="ac-badge ac-badge--success ac-badge--solid">Success</span>
                      <span class="ac-badge ac-badge--danger ac-badge--solid">9+</span>
                    </div>
                  </div>
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Outline badges</p>
                    <div class="ac-d-flex ac-flex-wrap ac-gap-2">
                      <span class="ac-badge ac-badge--primary ac-badge--outline">Primary</span>
                      <span class="ac-badge ac-badge--success ac-badge--outline">Active</span>
                      <span class="ac-badge ac-badge--danger ac-badge--outline">Danger</span>
                    </div>
                  </div>
                  <div>
                    <p class="ac-text-xs ac-text-muted ac-mb-2">Status dots</p>
                    <div class="ac-d-flex ac-flex-col ac-gap-1">
                      <span class="ac-status ac-status--active"><span class="ac-status__dot"></span> Active</span>
                      <span class="ac-status ac-status--warning"><span class="ac-status__dot"></span> Warning</span>
                      <span class="ac-status ac-status--danger"><span class="ac-status__dot"></span> Offline</span>
                      <span class="ac-status ac-status--inactive"><span class="ac-status__dot"></span> Inactive</span>
                      <span class="ac-status ac-status--live"><span class="ac-status__dot"></span> Live</span>
                    </div>
                  </div>
                </div>
              </div>

              {* ALERTS *}
              <div class="ac-card">
                <div class="ac-card__header">
                  <h2 class="ac-card__title">Alerts</h2>
                </div>
                <div class="ac-card__body ac-d-flex ac-flex-col ac-gap-3">
                  <div class="ac-alert ac-alert--success" role="alert">
                    <strong>Success!</strong> Your changes have been saved.
                    <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
                  </div>
                  <div class="ac-alert ac-alert--warning" role="alert">
                    <strong>Warning!</strong> Your license expires in 7 days.
                    <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
                  </div>
                  <div class="ac-alert ac-alert--error" role="alert">
                    <strong>Error!</strong> Connection to the API failed.
                    <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
                  </div>
                  <div class="ac-alert ac-alert--info" role="alert">
                    <strong>Info:</strong> A new update is available.
                  </div>
                </div>
              </div>

              {* SKELETON LOADERS (Loader component) *}
              <div class="ac-card">
                <div class="ac-card__header ac-d-flex ac-justify-content-between">
                  <h2 class="ac-card__title">Skeleton Loaders</h2>
                  <button class="ac-btn ac-btn--ghost ac-btn--sm" id="ac-toggle-skeleton">Toggle</button>
                </div>
                <div class="ac-card__body" id="ac-skeleton-demo">
                  <div class="ac-skeleton-card">
                    <div class="ac-d-flex ac-gap-3 ac-mb-4">
                      <div class="ac-skeleton ac-skeleton--avatar"></div>
                      <div class="ac-flex-1">
                        <div class="ac-skeleton ac-skeleton--title ac-mb-2"></div>
                        <div class="ac-skeleton ac-skeleton--text ac-skeleton--short"></div>
                      </div>
                    </div>
                    <div class="ac-skeleton ac-skeleton--text ac-mb-2"></div>
                    <div class="ac-skeleton ac-skeleton--text ac-mb-2"></div>
                    <div class="ac-skeleton ac-skeleton--text ac-skeleton--short"></div>
                  </div>
                </div>
              </div>

              {* SPINNERS *}
              <div class="ac-card">
                <div class="ac-card__header">
                  <h2 class="ac-card__title">Spinners</h2>
                </div>
                <div class="ac-card__body">
                  <div class="ac-d-flex ac-align-items-center ac-gap-4 ac-flex-wrap">
                    <div class="ac-spinner ac-spinner--xs"></div>
                    <div class="ac-spinner ac-spinner--sm"></div>
                    <div class="ac-spinner"></div>
                    <div class="ac-spinner ac-spinner--lg"></div>
                    <div class="ac-spinner ac-spinner--xl"></div>
                    <div class="ac-spinner ac-spinner--success"></div>
                    <div class="ac-spinner ac-spinner--warning"></div>
                    <div class="ac-spinner ac-spinner--danger"></div>
                  </div>
                </div>
              </div>

            </div>
            {* End right column *}

          </div>
          {* End two-column layout *}

          {* =================================================================
             TABS VARIANTS SHOWCASE
             ================================================================= *}
          <div class="ac-dashboard-grid ac-mt-6" style="--ac-dashboard-cols:2;">

            {* Pills tabs *}
            <div class="ac-card">
              <div class="ac-card__header"><h2 class="ac-card__title">Pills Tabs</h2></div>
              <div class="ac-card__body">
                <div class="ac-tabs ac-tabs--pills" role="tablist">
                  <div class="ac-tabs__nav">
                    <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="pill-1">Overview</button>
                    <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="pill-2">Stats</button>
                    <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="pill-3">Logs</button>
                  </div>
                  <div class="ac-tabs__panels">
                    <div class="ac-tabs__panel ac-tabs__panel--active" id="pill-1" role="tabpanel"><p class="ac-mt-3 ac-text-sm ac-text-muted">Overview panel content.</p></div>
                    <div class="ac-tabs__panel" id="pill-2" role="tabpanel"><p class="ac-mt-3 ac-text-sm ac-text-muted">Stats panel content.</p></div>
                    <div class="ac-tabs__panel" id="pill-3" role="tabpanel"><p class="ac-mt-3 ac-text-sm ac-text-muted">Logs panel content.</p></div>
                  </div>
                </div>
              </div>
            </div>

            {* Boxed tabs *}
            <div class="ac-card">
              <div class="ac-card__header"><h2 class="ac-card__title">Boxed Tabs</h2></div>
              <div class="ac-card__body">
                <div class="ac-tabs ac-tabs--boxed" role="tablist">
                  <div class="ac-tabs__nav">
                    <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="box-1">Details</button>
                    <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="box-2">Billing</button>
                    <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="box-3">History</button>
                  </div>
                  <div class="ac-tabs__panels">
                    <div class="ac-tabs__panel ac-tabs__panel--active" id="box-1" role="tabpanel"><p class="ac-mt-3 ac-text-sm ac-text-muted">Details panel content.</p></div>
                    <div class="ac-tabs__panel" id="box-2" role="tabpanel"><p class="ac-mt-3 ac-text-sm ac-text-muted">Billing panel content.</p></div>
                    <div class="ac-tabs__panel" id="box-3" role="tabpanel"><p class="ac-mt-3 ac-text-sm ac-text-muted">History panel content.</p></div>
                  </div>
                </div>
              </div>
            </div>

          </div>

          {* =================================================================
             CARD VARIANTS
             ================================================================= *}
          <div class="ac-card ac-mt-6">
            <div class="ac-card__header"><h2 class="ac-card__title">Card Variants</h2></div>
            <div class="ac-card__body">
              <div class="ac-card-grid">
                <div class="ac-card ac-card--flat">
                  <div class="ac-card__body"><strong>Flat</strong><br><span class="ac-text-sm ac-text-muted">No shadow, border only.</span></div>
                </div>
                <div class="ac-card ac-card--bordered">
                  <div class="ac-card__body"><strong>Bordered</strong><br><span class="ac-text-sm ac-text-muted">Heavier border.</span></div>
                </div>
                <div class="ac-card ac-card--elevated">
                  <div class="ac-card__body"><strong>Elevated</strong><br><span class="ac-text-sm ac-text-muted">Drop shadow.</span></div>
                </div>
                <div class="ac-card ac-card--interactive">
                  <div class="ac-card__body"><strong>Interactive</strong><br><span class="ac-text-sm ac-text-muted">Hover lift effect.</span></div>
                </div>
                <div class="ac-card ac-card--primary">
                  <div class="ac-card__body"><strong>Primary</strong><br><span class="ac-text-sm ac-text-muted">Left accent strip.</span></div>
                </div>
                <div class="ac-card ac-card--success">
                  <div class="ac-card__body"><strong>Success</strong><br><span class="ac-text-sm ac-text-muted">Left accent strip.</span></div>
                </div>
                <div class="ac-card ac-card--warning">
                  <div class="ac-card__body"><strong>Warning</strong><br><span class="ac-text-sm ac-text-muted">Left accent strip.</span></div>
                </div>
                <div class="ac-card ac-card--danger">
                  <div class="ac-card__body"><strong>Danger</strong><br><span class="ac-text-sm ac-text-muted">Left accent strip.</span></div>
                </div>
              </div>
            </div>
          </div>

          {* =================================================================
             STATE PATTERNS
             ================================================================= *}
          <div class="ac-dashboard-grid ac-mt-6" style="--ac-dashboard-cols:3;">

            {* Empty state *}
            <div class="ac-card">
              <div class="ac-card__body">
                <div class="ac-empty-state ac-empty-state--compact">
                  <div class="ac-empty-state__art">&#128230;</div>
                  <h3 class="ac-empty-state__title">No results</h3>
                  <p class="ac-empty-state__desc">Try adjusting your filters.</p>
                  <div class="ac-empty-state__actions">
                    <button class="ac-btn ac-btn--primary ac-btn--sm">Clear filters</button>
                  </div>
                </div>
              </div>
            </div>

            {* Error state *}
            <div class="ac-card">
              <div class="ac-card__body">
                <div class="ac-error-state">
                  <div class="ac-error-state__icon">&#9888;</div>
                  <h3 class="ac-error-state__title">Connection failed</h3>
                  <p class="ac-error-state__desc">Could not reach the API.</p>
                  <button class="ac-btn ac-btn--secondary ac-btn--sm" data-demo-retry>Retry</button>
                </div>
              </div>
            </div>

            {* Loading state *}
            <div class="ac-card">
              <div class="ac-card__body">
                <div class="ac-loading-state">
                  <div class="ac-spinner ac-spinner--lg"></div>
                  <p class="ac-loading-state__text">Loading data...</p>
                </div>
              </div>
            </div>

          </div>
          {* End state patterns *}

          {* =================================================================
             VERTICAL TABS (Tabs component variant)
             ================================================================= *}
          <div class="ac-card ac-mt-6">
            <div class="ac-card__header"><h2 class="ac-card__title">Vertical Tabs</h2></div>
            <div class="ac-card__body">
              <div class="ac-tabs ac-tabs--vertical" role="tablist">
                <div class="ac-tabs__nav">
                  <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="vert-1">Account</button>
                  <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="vert-2">Billing</button>
                  <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="vert-3">Security</button>
                  <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="vert-4">Notifications</button>
                </div>
                <div class="ac-tabs__panels">
                  <div class="ac-tabs__panel ac-tabs__panel--active" id="vert-1" role="tabpanel">
                    <h4>Account Settings</h4>
                    <p class="ac-text-sm ac-text-muted">Manage your account details and preferences.</p>
                  </div>
                  <div class="ac-tabs__panel" id="vert-2" role="tabpanel">
                    <h4>Billing Settings</h4>
                    <p class="ac-text-sm ac-text-muted">View and update your billing information.</p>
                  </div>
                  <div class="ac-tabs__panel" id="vert-3" role="tabpanel">
                    <h4>Security Settings</h4>
                    <p class="ac-text-sm ac-text-muted">Two-factor authentication and password options.</p>
                  </div>
                  <div class="ac-tabs__panel" id="vert-4" role="tabpanel">
                    <h4>Notification Preferences</h4>
                    <p class="ac-text-sm ac-text-muted">Choose how and when you receive notifications.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>{* end .ac-page *}
      </div>{* end .ac-content *}
    </div>{* end .ac-main *}
  </div>{* end .ac-layout *}

  {* Sidebar overlay for mobile *}
  <div class="ac-sidebar-overlay" id="ac-sidebar-overlay"></div>

  {* ==========================================================================
     MODAL — Service detail with nested tabs (Modal component)
     ========================================================================== *}
  <div class="ac-modal-overlay" id="ac-demo-modal" role="dialog" aria-modal="true" aria-labelledby="modal-title">
    <div class="ac-modal ac-modal--lg">
      <div class="ac-modal__header">
        <h3 class="ac-modal__title" id="modal-title">Service Details</h3>
        <button class="ac-modal__close" data-ac-close aria-label="Close">&times;</button>
      </div>
      <div class="ac-modal__body">
        <div class="ac-tabs ac-tabs--boxed" role="tablist">
          <div class="ac-tabs__nav">
            <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="m-overview">Overview</button>
            <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="m-billing">Billing</button>
            <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="m-logs">Logs</button>
          </div>
          <div class="ac-tabs__panels">
            <div class="ac-tabs__panel ac-tabs__panel--active" id="m-overview" role="tabpanel">
              <div class="ac-dashboard-grid ac-mt-3" style="--ac-dashboard-cols:2;">
                <div>
                  <p class="ac-text-xs ac-text-muted">Client</p>
                  <p class="ac-fw-600">Alice Johnson</p>
                </div>
                <div>
                  <p class="ac-text-xs ac-text-muted">Product</p>
                  <p class="ac-fw-600">Business Hosting</p>
                </div>
                <div>
                  <p class="ac-text-xs ac-text-muted">Status</p>
                  <span class="ac-badge ac-badge--success">Active</span>
                </div>
                <div>
                  <p class="ac-text-xs ac-text-muted">Amount</p>
                  <p class="ac-fw-600">$29.00 / month</p>
                </div>
              </div>
            </div>
            <div class="ac-tabs__panel" id="m-billing" role="tabpanel">
              <p class="ac-mt-3 ac-text-sm ac-text-muted">Last invoice: #INV-4421 — $29.00 — Paid</p>
            </div>
            <div class="ac-tabs__panel" id="m-logs" role="tabpanel">
              <p class="ac-mt-3 ac-text-sm ac-text-muted">2026-03-01 — Service renewed automatically.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="ac-modal__footer">
        <button class="ac-btn ac-btn--secondary" data-ac-close>Close</button>
        <button class="ac-btn ac-btn--primary">Edit Service</button>
      </div>
    </div>
  </div>

  {* ==========================================================================
     MODAL — Confirm delete (Modal component — confirm variant)
     ========================================================================== *}
  <div class="ac-modal-overlay" id="ac-confirm-modal" role="dialog" aria-modal="true" aria-labelledby="confirm-title">
    <div class="ac-modal ac-modal--sm ac-modal--confirm">
      <div class="ac-modal__header">
        <h3 class="ac-modal__title" id="confirm-title">Confirm Delete</h3>
        <button class="ac-modal__close" data-ac-close aria-label="Close">&times;</button>
      </div>
      <div class="ac-modal__body">
        <div class="ac-modal__icon ac-modal__icon--danger">&#9888;</div>
        <p class="ac-text-center ac-mt-3">Are you sure you want to delete this service? This action cannot be undone.</p>
      </div>
      <div class="ac-modal__footer ac-justify-content-center">
        <button class="ac-btn ac-btn--secondary" data-ac-close>Cancel</button>
        <button class="ac-btn ac-btn--danger" data-ac-confirm-delete>Yes, Delete</button>
      </div>
    </div>
  </div>

  {* ==========================================================================
     TOAST CONTAINER (Toast component)
     ========================================================================== *}
  <div class="ac-toast-container ac-toast-container--top-right" id="ac-toast-container" aria-live="polite"></div>

</div>{* end .addonscare *}