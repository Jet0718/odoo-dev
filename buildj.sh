#!/bin/bash

source build.env

echo "Building the junari/odoo:$ODOO_VERSION image..."
docker build \
    --build-arg ODOO_VERSION=$ODOO_VERSION \
    --build-arg ODOO_REVISION=$ODOO_REVISION \
    -t jetlo0718/odoo-dev:$ODOO_VERSION .
