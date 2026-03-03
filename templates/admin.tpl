{* =============================================================================
   AddonsCare UI System — Admin Panel Template (Real Module Layout)
   Using tabs as main navigation holding component combinations.
   ============================================================================= *}
<div class="addonscare" id="ac-app">
  <div class="ac-container">

    {* =========================================================================
       PAGE HEADER
       ========================================================================= *}
    <div class="ac-header">
      <h1>AddonsCare</h1>
      <p>Module management and configuration dashboard.</p>
    </div>

    {* =========================================================================
       MAIN NAVIGATION (Tabs)
       ========================================================================= *}
    <div class="ac-tabs" role="tablist">
      <div class="ac-tabs__nav">
        <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="panel-dashboard">Dashboard</button>
        <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="panel-services">Services</button>
        <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="panel-settings">Settings</button>
        <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="panel-components">Components Library</button>
      </div>
      
      <div class="ac-tabs__panels ac-mt-6">

        {* =====================================================================
           TAB 1: DASHBOARD
           Contains: Cards, Alert, Modal
           ===================================================================== *}
        <div class="ac-tabs__panel ac-tabs__panel--active" id="panel-dashboard" role="tabpanel">
          
          <div class="ac-alert ac-alert--info ac-mb-6" role="alert">
            <strong>System Status:</strong> All services are operating normally. Version 2.1.0 is active.
            <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
          </div>

          <div class="ac-grid">
            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Active Licenses</h3>
              </div>
              <div class="ac-card__body ac-text-center">
                <div style="font-size: 2.5rem; font-weight: 700; color: var(--ac-primary);">{$services|count}</div>
                <p class="ac-text-muted">Total managed services</p>
              </div>
            </div>

            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Revenue Impact</h3>
                <span class="ac-badge ac-badge--success">+12%</span>
              </div>
              <div class="ac-card__body ac-text-center">
                <div style="font-size: 2.5rem; font-weight: 700; color: var(--ac-neutral-800);">$4,250</div>
                <p class="ac-text-muted">This month</p>
              </div>
            </div>
            
            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Quick Actions</h3>
              </div>
              <div class="ac-card__body ac-flex ac-flex-col ac-gap-3">
                <button class="ac-btn ac-btn--primary" data-ac-modal="#modal-sync">Sync Database</button>
                <button class="ac-btn ac-btn--secondary ac-btn--sm">View Audit Logs</button>
              </div>
            </div>
          </div>
          
        </div>

        {* =====================================================================
           TAB 2: SERVICES
           Contains: Table, Pagination, Badge, Empty State
           ===================================================================== *}
        <div class="ac-tabs__panel" id="panel-services" role="tabpanel">
          
          {if $services|count > 0}
            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Managed Services</h3>
                <div class="ac-flex ac-gap-2">
                  <span class="ac-badge ac-badge--primary">{$services|count} total</span>
                  <button class="ac-btn ac-btn--secondary ac-btn--sm">Export CSV</button>
                </div>
              </div>
              <div class="ac-card__body" style="padding: 0;">
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
                      </tr>
                    </thead>
                    <tbody>
                      {foreach $services as $svc}
                      <tr>
                        <td><code>#{$svc.id}</code></td>
                        <td>{$svc.client}</td>
                        <td>{$svc.product}</td>
                        <td>
                          {if $svc.status == 'active'}
                            <span class="ac-badge ac-badge--success">Active</span>
                          {elseif $svc.status == 'pending'}
                            <span class="ac-badge ac-badge--warning">Pending</span>
                          {elseif $svc.status == 'suspended'}
                            <span class="ac-badge ac-badge--danger">Suspended</span>
                          {else}
                            <span class="ac-badge ac-badge--neutral">Inactive</span>
                          {/if}
                        </td>
                        <td>{$svc.amount}</td>
                        <td>{$svc.next_due}</td>
                      </tr>
                      {/foreach}
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="ac-card__footer ac-justify-center">
                <nav class="ac-pagination" aria-label="Page navigation">
                  <button class="ac-pagination__btn" disabled>&lsaquo; Prev</button>
                  <button class="ac-pagination__btn ac-pagination__btn--active">1</button>
                  <button class="ac-pagination__btn">2</button>
                  <button class="ac-pagination__btn">3</button>
                  <span class="ac-pagination__ellipsis">&hellip;</span>
                  <button class="ac-pagination__btn">8</button>
                  <button class="ac-pagination__btn">Next &rsaquo;</button>
                </nav>
              </div>
            </div>
          {else}
            <div class="ac-card">
              <div class="ac-card__body">
                <div class="ac-empty-state">
                  <div class="ac-empty-state__icon">&#128230;</div>
                  <h3 class="ac-empty-state__title">No services found</h3>
                  <p class="ac-empty-state__desc">There are no services currently managed by this module.</p>
                  <button class="ac-btn ac-btn--primary">Refresh Sync</button>
                </div>
              </div>
            </div>
          {/if}

        </div>

        {* =====================================================================
           TAB 3: SETTINGS
           Contains: Forms, Buttons, Toast (trigger)
           ===================================================================== *}
        <div class="ac-tabs__panel" id="panel-settings" role="tabpanel">
          
          <div class="ac-card">
            <div class="ac-card__header">
              <h3>Module Configuration</h3>
            </div>
            <div class="ac-card__body">
              <form id="ac-settings-form" novalidate>
    
                <div class="ac-form-section" style="margin-top: 0;">
                  <h4 class="ac-form-section__title">General Settings</h4>
                  <p class="ac-form-section__desc">Basic parameters for the module operation.</p>
                </div>
    
                <div class="ac-form-group">
                  <label class="ac-label" for="f-name">Display Name</label>
                  <input class="ac-form-control" type="text" id="f-name" value="Addons Care" placeholder="Module name">
                </div>
    
                <div class="ac-form-group">
                  <label class="ac-label" for="f-license">License Key</label>
                  <input class="ac-form-control ac-is-valid" type="text" id="f-license" value="AC-DEMO-123456" placeholder="AC-XXXX-XXXX">
                  <span class="ac-form-feedback ac-form-feedback--valid">License is active and valid.</span>
                </div>
                
                <div class="ac-form-group">
                  <label class="ac-label" for="f-email">Admin Warning Email</label>
                  <input class="ac-form-control" type="email" id="f-email" placeholder="admin@example.com">
                </div>
    
                <div class="ac-form-section">
                  <h4 class="ac-form-section__title">Display Options</h4>
                </div>
    
                <div class="ac-form-group">
                  <label class="ac-toggle">
                    <input type="checkbox" class="ac-toggle__input" checked>
                    <span class="ac-toggle__track"></span>
                    <span class="ac-toggle__label">Enable client area widget</span>
                  </label>
                </div>
                
                <div class="ac-form-group">
                  <label class="ac-label">Widget Location</label>
                  <div class="ac-flex ac-flex-col ac-gap-2">
                    <label class="ac-radio">
                      <input type="radio" name="widget_loc" class="ac-radio__input" checked>
                      <span class="ac-radio__label">Dashboard Home</span>
                    </label>
                    <label class="ac-radio">
                      <input type="radio" name="widget_loc" class="ac-radio__input">
                      <span class="ac-radio__label">Service Details Sidebar</span>
                    </label>
                  </div>
                </div>

                <div class="ac-form-group ac-mt-4">
                  <label class="ac-label">Notification Events</label>
                  <div class="ac-flex ac-flex-col ac-gap-2">
                    <label class="ac-checkbox">
                      <input type="checkbox" class="ac-checkbox__input" checked>
                      <span class="ac-checkbox__label">Service Creation</span>
                    </label>
                    <label class="ac-checkbox">
                      <input type="checkbox" class="ac-checkbox__input" checked>
                      <span class="ac-checkbox__label">Service Auto-Suspension</span>
                    </label>
                    <label class="ac-checkbox">
                      <input type="checkbox" class="ac-checkbox__input">
                      <span class="ac-checkbox__label">Daily Sync Report</span>
                    </label>
                  </div>
                </div>
    
              </form>
            </div>
            <div class="ac-card__footer">
              <button class="ac-btn ac-btn--secondary">Discard Changes</button>
              <button type="submit" form="ac-settings-form" class="ac-btn ac-btn--primary">Save Configuration</button>
            </div>
          </div>

        </div>

        {* =====================================================================
           TAB 4: COMPONENTS LIBRARY
           Contains: Loaders, UI States (Misc leftovers)
           ===================================================================== *}
        <div class="ac-tabs__panel" id="panel-components" role="tabpanel">
          
          <div class="ac-grid">
            
            {* Loaders *}
            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Loaders</h3>
              </div>
              <div class="ac-card__body">
                <div class="ac-flex ac-items-center ac-gap-4 ac-mb-4">
                  <div class="ac-spinner ac-spinner--sm"></div>
                  <div class="ac-spinner"></div>
                  <div class="ac-spinner ac-spinner--lg"></div>
                </div>
                <div class="ac-loader">
                  <div class="ac-spinner"></div>
                  <span class="ac-mt-2">Connecting to API&hellip;</span>
                </div>
              </div>
            </div>

            {* Button States *}
            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Action States</h3>
              </div>
              <div class="ac-card__body ac-flex ac-flex-col ac-gap-3">
                <button class="ac-btn ac-btn--danger">Force Delete</button>
                <button class="ac-btn ac-btn--primary ac-btn--loading" disabled>Processing...</button>
                <button class="ac-btn ac-btn--ghost">Secondary Action</button>
              </div>
            </div>
            
            {* System Alerts *}
            <div class="ac-card">
              <div class="ac-card__header">
                <h3>Toast Triggers</h3>
              </div>
              <div class="ac-card__body ac-flex ac-flex-col ac-gap-3">
                <button class="ac-btn ac-btn--secondary" data-demo-toast="warning">Test Warning Toast</button>
                <button class="ac-btn ac-btn--secondary" data-demo-toast="error">Test Error Toast</button>
                <div class="ac-alert ac-alert--error ac-mt-4" role="alert">
                  <strong>Connection Failed</strong><br>
                  API endpoint unreachable.
                </div>
              </div>
            </div>

          </div>

        </div>

      </div> {* end .ac-tabs__panels *}
    </div> {* end .ac-tabs *}

  </div>{* end .ac-container *}

  {* ==========================================================================
     MODAL OVERLAY (Used by Dashboard Action)
     ========================================================================== *}
  <div class="ac-modal-overlay" id="modal-sync" role="dialog" aria-modal="true" aria-labelledby="modal-title">
    <div class="ac-modal">
      <div class="ac-modal__header">
        <h3 id="modal-title">Confirm Database Sync</h3>
        <button class="ac-modal__close" data-ac-close aria-label="Close">&times;</button>
      </div>
      <div class="ac-modal__body">
        <p>This will synchronize all local service records with the remote API. This process may take a few minutes depending on the volume of records.</p>
        <div class="ac-alert ac-alert--warning ac-mt-4" role="alert">
          Warning: Ensure no billing runs are currently active before proceeding.
        </div>
      </div>
      <div class="ac-modal__footer">
        <button class="ac-btn ac-btn--secondary" data-ac-close>Cancel</button>
        <button class="ac-btn ac-btn--primary" data-ac-close data-demo-toast="success">Start Sync</button>
      </div>
    </div>
  </div>

  {* ==========================================================================
     TOAST CONTAINER
     ========================================================================== *}
  <div class="ac-toast-container" id="ac-toast-container" aria-live="polite"></div>

</div>{* end .addonscare *}