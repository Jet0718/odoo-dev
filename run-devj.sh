#!/bin/bash
set -x

source build.env

echo "Starting the jetlo0718/odoo:$ODOO_VERSION image for development ..."
docker run  -it --name=odoo-dev-$ODOO_VERSION \
    -v odoodata$ODOO_VERSION:/opt/odoo/data \
    -v odoovscode$ODOO_VERSION:/opt/odoo/.vscode \
    -v odooaddons$ODOO_VERSION:/opt/odoo/custom_addons \
    -v odoohome$ODOO_VERSION:/home/odoo \
    -p 8069:8069 --env-file=odoo.env-example \
    jetlo0718/odoo-dev:$ODOO_VERSION bash
