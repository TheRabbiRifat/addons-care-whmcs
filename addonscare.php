<?php
/**
 * Addons Care - WHMCS Addon Module
 * =============================================================================
 * Showcases the complete Addons Care component system inside WHMCS admin.
 * Every UI component from addonscare.css is demonstrated in admin.tpl.
 *
 * Module directory: /modules/addons/addonscare/
 *
 * Files:
 *   addonscare.php        - This file (module descriptor + output hook)
 *   assets/style.css      - Scoped AC design system CSS (all components)
 *   assets/script.js      - Vanilla JS (tabs, modal, toast, alerts)
 *   templates/admin.tpl   - Smarty template (admin panel UI)
 *
 * Install:
 *   1. Copy /addonscare/ into /whmcs/modules/addons/addonscare/
 *   2. Setup > Addon Modules > Addons Care > Activate
 *   3. Addons > Addons Care
 *
 * Requires: WHMCS 8.x+, PHP 7.4+
 * =============================================================================
 */

if (!defined('WHMCS')) {
    die('Access denied.');
}

// ---------------------------------------------------------------------------
// Module configuration
// ---------------------------------------------------------------------------
function addonscare_config()
{
    return [
        'name'        => 'Addons Care',
        'description' => 'Addons Care component system showcase for WHMCS admin.',
        'version'     => '1.0.0',
        'author'      => 'Addons Care',
        'fields'      => [
            'license_key' => [
                'FriendlyName' => 'License Key',
                'Type'         => 'text',
                'Size'         => '40',
                'Description'  => 'Your Addons Care license key.',
            ],
            'show_demo_data' => [
                'FriendlyName' => 'Show Demo Data',
                'Type'         => 'yesno',
                'Description'  => 'Populate tables with sample service records.',
            ],
            'brand_color' => [
                'FriendlyName' => 'Brand Color',
                'Type'         => 'text',
                'Size'         => '10',
                'Description'  => 'Optional CSS hex override, e.g. #6366f1',
            ],
        ],
    ];
}

// ---------------------------------------------------------------------------
// Lifecycle hooks
// ---------------------------------------------------------------------------
function addonscare_activate()
{
    return [
        'status'      => 'success',
        'description' => 'Addons Care activated successfully.',
    ];
}

function addonscare_deactivate()
{
    return [
        'status'      => 'success',
        'description' => 'Addons Care deactivated.',
    ];
}

function addonscare_upgrade(array $vars)
{
    // Run any DB migrations here on version upgrades.
}

// ---------------------------------------------------------------------------
// Admin area output
// ---------------------------------------------------------------------------
function addonscare_output(array $vars)
{
    $moduleDir = dirname(__FILE__);
    $whmcsUrl  = rtrim($vars['whmcsurl'] ?? '', '/');
    $settings  = $vars['_raw'] ?? [];

    // Base URL for all module assets (CSS, JS, images)
    $assetUrl = $whmcsUrl . '/modules/addons/addonscare/assets/';

    // Sample data - in a real module this comes from the database
    $services = [
        [
            'id'       => 1001,
            'client'   => 'Alice Johnson',
            'product'  => 'Business Hosting',
            'status'   => 'active',
            'amount'   => '$29.00',
            'next_due' => '2026-04-01',
        ],
        [
            'id'       => 1002,
            'client'   => 'Bob Martinez',
            'product'  => 'Reseller Pro',
            'status'   => 'pending',
            'amount'   => '$89.00',
            'next_due' => '2026-03-15',
        ],
        [
            'id'       => 1003,
            'client'   => 'Carol Williams',
            'product'  => 'VPS 4GB',
            'status'   => 'active',
            'amount'   => '$44.00',
            'next_due' => '2026-04-10',
        ],
        [
            'id'       => 1004,
            'client'   => 'David Lee',
            'product'  => 'Dedicated Server',
            'status'   => 'inactive',
            'amount'   => '$199.00',
            'next_due' => '2026-02-28',
        ],
        [
            'id'       => 1005,
            'client'   => 'Eva Brown',
            'product'  => 'Shared Starter',
            'status'   => 'active',
            'amount'   => '$9.00',
            'next_due' => '2026-05-01',
        ],
        [
            'id'       => 1006,
            'client'   => 'Frank Wilson',
            'product'  => 'SSL Certificate',
            'status'   => 'suspended',
            'amount'   => '$14.00',
            'next_due' => '2026-06-01',
        ],
    ];

    $stats = [
        ['label' => 'Total Revenue',    'value' => '$12,840', 'change' => '+8.2%', 'up' => true,  'color' => 'primary'],
        ['label' => 'Active Services',  'value' => '342',     'change' => '+14',   'up' => true,  'color' => 'success'],
        ['label' => 'Open Tickets',     'value' => '17',      'change' => '-3',    'up' => false, 'color' => 'warning'],
        ['label' => 'Pending Renewals', 'value' => '28',      'change' => '+5',    'up' => false, 'color' => 'danger'],
    ];

    // Optional brand color override from module settings
    $brandOverride = '';
    if (!empty($settings['brand_color'])) {
        $color = htmlspecialchars($settings['brand_color'], ENT_QUOTES, 'UTF-8');
        $brandOverride = '<style>.addonscare{--ac-primary:' . $color . ';--ac-primary-dark:' . $color . ';}</style>';
    }

    // Inject CSS
    echo $brandOverride;
    echo '<link rel="preconnect" href="https://fonts.googleapis.com">';
    echo '<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>';
    echo '<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap">';
    echo '<link rel="stylesheet" href="' . htmlspecialchars($assetUrl, ENT_QUOTES, 'UTF-8') . 'style.css">';

    // Render Smarty template
    $smarty = new Smarty();
    $smarty->addTemplateDir($moduleDir . '/templates');
    $smarty->assign('modulelink', $vars['modulelink'] ?? '');
    $smarty->assign('services',   $services);
    $smarty->assign('stats',      $stats);
    $smarty->assign('settings',   $settings);
    $smarty->assign('assetUrl',   $assetUrl);
    $smarty->display('admin.tpl');

    // Inject JS after content
    echo '<script src="' . htmlspecialchars($assetUrl, ENT_QUOTES, 'UTF-8') . 'script.js"></script>';
}

// ---------------------------------------------------------------------------
// Client area (disabled - admin-only module)
// ---------------------------------------------------------------------------
function addonscare_clientarea(array $vars)
{
    return [];
}