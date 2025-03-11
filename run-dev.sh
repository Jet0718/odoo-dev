#!/bin/bash
set -x

source build.env

echo "Starting the jetlo0718/odoo-dev:$ODOO_VERSION image for development ..."
docker run --rm -it --name=odoo-dev-$ODOO_VERSION \
    -v my-odoo-data-$ODOO_VERSION:/opt/odoo/data \
    -v my-odoo-vscode-$ODOO_VERSION:/opt/odoo/.vscode \
    -v my-odoo-custom-addons-$ODOO_VERSION:/opt/odoo/custom_addons \
    -v my-odoo-home-$ODOO_VERSION:/home/odoo \
    -p 8069:8069 --env-file=odoo.env \
    jetlo0718/odoo-dev:$ODOO_VERSION bash
