#!/bin/bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <state_key>"
  exit 1
fi

STATE_KEY="$1"

RESOURCE_GROUP="cosmotechstates"
STORAGE_ACCOUNT="cosmotechstates"
CONTAINER_NAME="cosmotechstates"

PLATFORM_ENTRIES_ACCESS_KEY=$(
  az storage account keys list \
    --resource-group "$RESOURCE_GROUP" \
    --account-name "$STORAGE_ACCOUNT" \
    --query "[0].value" \
    --output tsv
)

export PLATFORM_ENTRIES_ACCESS_KEY

terraform init -upgrade \
  -backend-config="resource_group_name=$RESOURCE_GROUP" \
  -backend-config="storage_account_name=$STORAGE_ACCOUNT" \
  -backend-config="container_name=$CONTAINER_NAME" \
  -backend-config="key=$STATE_KEY" \
  -backend-config="access_key=$PLATFORM_ENTRIES_ACCESS_KEY"
