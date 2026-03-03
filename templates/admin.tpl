{* =============================================================================
   AddonsCare UI System — Admin Panel Template
   12 Components · ONE structural pattern each · Scrollable showcase page
   ============================================================================= *}
<div class="addonscare" id="ac-app">
  <div class="ac-container">

    {* =========================================================================
       PAGE HEADER
       ========================================================================= *}
    <div class="ac-header">
      <h1>AddonsCare UI System</h1>
      <p>Component showcase — all 12 UI elements in one scrollable page.</p>
    </div>

    {* =========================================================================
       1. BUTTONS
       ========================================================================= *}
    <div class="ac-section" id="section-buttons">
      <h2 class="ac-section__title">1. Buttons</h2>
      <div class="ac-card">
        <div class="ac-card__body">

          <p class="ac-demo-label">Variants</p>
          <div class="ac-flex ac-flex-wrap ac-gap-3 ac-mb-4">
            <button class="ac-btn ac-btn--primary">Primary</button>
            <button class="ac-btn ac-btn--secondary">Secondary</button>
            <button class="ac-btn ac-btn--danger">Danger</button>
            <button class="ac-btn ac-btn--ghost">Ghost</button>
          </div>

          <p class="ac-demo-label">Sizes</p>
          <div class="ac-flex ac-flex-wrap ac-items-center ac-gap-3 ac-mb-4">
            <button class="ac-btn ac-btn--primary ac-btn--sm">Small</button>
            <button class="ac-btn ac-btn--primary">Medium</button>
            <button class="ac-btn ac-btn--primary ac-btn--lg">Large</button>
          </div>

          <p class="ac-demo-label">States</p>
          <div class="ac-flex ac-flex-wrap ac-gap-3">
            <button class="ac-btn ac-btn--primary" disabled>Disabled</button>
            <button class="ac-btn ac-btn--primary ac-btn--loading" disabled>Loading</button>
          </div>

        </div>
      </div>
    </div>

    {* =========================================================================
       2. TABS
       ========================================================================= *}
    <div class="ac-section" id="section-tabs">
      <h2 class="ac-section__title">2. Tabs</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <div class="ac-tabs" role="tablist">
            <div class="ac-tabs__nav">
              <button class="ac-tabs__tab ac-tabs__tab--active" role="tab" aria-selected="true" aria-controls="tab-overview">Overview</button>
              <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="tab-settings">Settings</button>
              <button class="ac-tabs__tab" role="tab" aria-selected="false" aria-controls="tab-logs">Activity Logs</button>
            </div>
            <div class="ac-tabs__panels">
              <div class="ac-tabs__panel ac-tabs__panel--active" id="tab-overview" role="tabpanel">
                <p>This is the <strong>Overview</strong> panel. It displays general information and summary data for the module.</p>
              </div>
              <div class="ac-tabs__panel" id="tab-settings" role="tabpanel">
                <p>This is the <strong>Settings</strong> panel. Module configuration options would appear here.</p>
              </div>
              <div class="ac-tabs__panel" id="tab-logs" role="tabpanel">
                <p>This is the <strong>Activity Logs</strong> panel. Recent events and changes are listed here.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    {* =========================================================================
       3. CARDS
       ========================================================================= *}
    <div class="ac-section" id="section-cards">
      <h2 class="ac-section__title">3. Cards</h2>
      <div class="ac-grid">
        <div class="ac-card">
          <div class="ac-card__header">
            <h3>Card with Header</h3>
            <span class="ac-badge ac-badge--primary">New</span>
          </div>
          <div class="ac-card__body">
            <p>Cards are the primary container for grouping related content. They have a consistent border, shadow, and padding.</p>
          </div>
          <div class="ac-card__footer">
            <button class="ac-btn ac-btn--secondary ac-btn--sm">Cancel</button>
            <button class="ac-btn ac-btn--primary ac-btn--sm">Save</button>
          </div>
        </div>

        <div class="ac-card">
          <div class="ac-card__body">
            <h3>Simple Card</h3>
            <p>A card with body only, no header or footer. Suitable for content blocks or informational panels.</p>
          </div>
        </div>

        <div class="ac-card">
          <div class="ac-card__header">
            <h3>Stat Card</h3>
          </div>
          <div class="ac-card__body ac-text-center">
            <div style="font-size: 2rem; font-weight: 700; color: var(--ac-primary);">342</div>
            <p class="ac-text-muted ac-text-sm">Active Services</p>
          </div>
        </div>
      </div>
    </div>

    {* =========================================================================
       4. ALERTS
       ========================================================================= *}
    <div class="ac-section" id="section-alerts">
      <h2 class="ac-section__title">4. Alerts</h2>
      <div class="ac-flex ac-flex-col ac-gap-3">
        <div class="ac-alert ac-alert--success" role="alert">
          <strong>Success!</strong> Your changes have been saved successfully.
          <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
        </div>
        <div class="ac-alert ac-alert--warning" role="alert">
          <strong>Warning!</strong> Your license expires in 7 days. Please renew.
          <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
        </div>
        <div class="ac-alert ac-alert--error" role="alert">
          <strong>Error!</strong> Connection to the API failed. Please check your settings.
          <button class="ac-alert__close" data-ac-dismiss="alert">&times;</button>
        </div>
        <div class="ac-alert ac-alert--info" role="alert">
          <strong>Info:</strong> A new update is available. Version 2.1.0 is ready to install.
        </div>
      </div>
    </div>

    {* =========================================================================
       5. FORMS
       ========================================================================= *}
    <div class="ac-section" id="section-forms">
      <h2 class="ac-section__title">5. Forms</h2>
      <div class="ac-card">
        <div class="ac-card__header">
          <h3>Module Settings</h3>
        </div>
        <div class="ac-card__body">
          <form id="ac-settings-form" novalidate>

            <div class="ac-form-section" style="margin-top: 0;">
              <h4 class="ac-form-section__title">General</h4>
              <p class="ac-form-section__desc">Basic module configuration options.</p>
            </div>

            <div class="ac-form-group">
              <label class="ac-label" for="f-name">Module Name</label>
              <input class="ac-form-control" type="text" id="f-name" value="Addons Care" placeholder="Enter module name">
            </div>

            <div class="ac-form-group">
              <label class="ac-label" for="f-license">License Key</label>
              <input class="ac-form-control ac-is-valid" type="text" id="f-license" placeholder="AC-XXXX-XXXX">
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
              <div class="ac-flex ac-flex-col ac-gap-2">
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
              <div class="ac-flex ac-flex-col ac-gap-2">
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
    </div>

    {* =========================================================================
       6. TABLE
       ========================================================================= *}
    <div class="ac-section" id="section-table">
      <h2 class="ac-section__title">6. Table</h2>
      <div class="ac-card">
        <div class="ac-card__header">
          <h3>Services</h3>
          <span class="ac-badge ac-badge--primary">{$services|count} records</span>
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
      </div>
    </div>

    {* =========================================================================
       7. BADGES
       ========================================================================= *}
    <div class="ac-section" id="section-badges">
      <h2 class="ac-section__title">7. Badges</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <div class="ac-flex ac-flex-wrap ac-gap-3">
            <span class="ac-badge ac-badge--primary">Primary</span>
            <span class="ac-badge ac-badge--success">Success</span>
            <span class="ac-badge ac-badge--warning">Warning</span>
            <span class="ac-badge ac-badge--danger">Danger</span>
            <span class="ac-badge ac-badge--info">Info</span>
            <span class="ac-badge ac-badge--neutral">Neutral</span>
          </div>
        </div>
      </div>
    </div>

    {* =========================================================================
       8. MODAL
       ========================================================================= *}
    <div class="ac-section" id="section-modal">
      <h2 class="ac-section__title">8. Modal</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <p>Click the button below to open a modal dialog.</p>
          <button class="ac-btn ac-btn--primary" data-ac-modal="#ac-demo-modal">Open Modal</button>
        </div>
      </div>
    </div>

    {* =========================================================================
       9. TOAST
       ========================================================================= *}
    <div class="ac-section" id="section-toast">
      <h2 class="ac-section__title">9. Toast</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <p>Click buttons to trigger toast notifications (top-right).</p>
          <div class="ac-flex ac-flex-wrap ac-gap-3">
            <button class="ac-btn ac-btn--primary ac-btn--sm" data-demo-toast="success">&#10003; Success</button>
            <button class="ac-btn ac-btn--secondary ac-btn--sm" data-demo-toast="warning">&#9888; Warning</button>
            <button class="ac-btn ac-btn--danger ac-btn--sm" data-demo-toast="error">&#10007; Error</button>
            <button class="ac-btn ac-btn--ghost ac-btn--sm" data-demo-toast="info">&#9432; Info</button>
          </div>
        </div>
      </div>
    </div>

    {* =========================================================================
       10. LOADER
       ========================================================================= *}
    <div class="ac-section" id="section-loader">
      <h2 class="ac-section__title">10. Loader</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <p class="ac-demo-label">Sizes</p>
          <div class="ac-flex ac-items-center ac-gap-4 ac-mb-4">
            <div class="ac-spinner ac-spinner--sm"></div>
            <div class="ac-spinner"></div>
            <div class="ac-spinner ac-spinner--lg"></div>
          </div>

          <p class="ac-demo-label">Loading State</p>
          <div class="ac-loader">
            <div class="ac-spinner ac-spinner--lg"></div>
            <span>Loading data&hellip;</span>
          </div>
        </div>
      </div>
    </div>

    {* =========================================================================
       11. EMPTY STATE
       ========================================================================= *}
    <div class="ac-section" id="section-empty-state">
      <h2 class="ac-section__title">11. Empty State</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <div class="ac-empty-state">
            <div class="ac-empty-state__icon">&#128230;</div>
            <h3 class="ac-empty-state__title">No results found</h3>
            <p class="ac-empty-state__desc">Try adjusting your search or filter criteria to find what you&rsquo;re looking for.</p>
            <button class="ac-btn ac-btn--primary ac-btn--sm">Clear Filters</button>
          </div>
        </div>
      </div>
    </div>

    {* =========================================================================
       12. PAGINATION
       ========================================================================= *}
    <div class="ac-section" id="section-pagination">
      <h2 class="ac-section__title">12. Pagination</h2>
      <div class="ac-card">
        <div class="ac-card__body">
          <p class="ac-text-sm ac-text-muted ac-mb-4">Showing 1&ndash;6 of 48 results</p>
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
    </div>

  </div>{* end .ac-container *}

  {* ==========================================================================
     MODAL OVERLAY — Service Details
     ========================================================================== *}
  <div class="ac-modal-overlay" id="ac-demo-modal" role="dialog" aria-modal="true" aria-labelledby="modal-title">
    <div class="ac-modal">
      <div class="ac-modal__header">
        <h3 id="modal-title">Service Details</h3>
        <button class="ac-modal__close" data-ac-close aria-label="Close">&times;</button>
      </div>
      <div class="ac-modal__body">
        <div class="ac-form-group">
          <label class="ac-label">Client</label>
          <p class="ac-fw-600">Alice Johnson</p>
        </div>
        <div class="ac-form-group">
          <label class="ac-label">Product</label>
          <p class="ac-fw-600">Business Hosting</p>
        </div>
        <div class="ac-form-group">
          <label class="ac-label">Status</label>
          <span class="ac-badge ac-badge--success">Active</span>
        </div>
        <div class="ac-form-group">
          <label class="ac-label">Amount</label>
          <p class="ac-fw-600">$29.00 / month</p>
        </div>
      </div>
      <div class="ac-modal__footer">
        <button class="ac-btn ac-btn--secondary" data-ac-close>Close</button>
        <button class="ac-btn ac-btn--primary">Edit Service</button>
      </div>
    </div>
  </div>

  {* ==========================================================================
     TOAST CONTAINER
     ========================================================================== *}
  <div class="ac-toast-container" id="ac-toast-container" aria-live="polite"></div>

</div>{* end .addonscare *}