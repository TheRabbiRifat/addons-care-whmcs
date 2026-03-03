# Addons Care - WHMCS Addon Module Framework

## Structure

This repo root IS the module root (/modules/addons/addonscare/).

    addonscare.php          - WHMCS module entry point
    assets/
        addonscare.css      - Framework CSS (16 components)
        addonscare.js       - Framework JS  (10 AC modules)
        style.css            - Module-specific CSS overrides
        script.js            - Module-specific JS
    templates/
        admin.tpl            - Smarty admin template (all 16 components)
    README.md

## Install

Copy the entire repo to /whmcs/modules/addons/addonscare/ then activate
via WHMCS Admin > Setup > Addon Modules > Addons Care > Activate.

## Encoding

All files UTF-8 without BOM. Comments plain ASCII only.
