#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <var-file>"
    exit 1
fi

VAR_FILE="$1"

if [ ! -s "$VAR_FILE" ]; then
    echo "This var file does not exist or is empty: $VAR_FILE"
    exit 1
fi

terraform plan -out=tfplan -var-file="$VAR_FILE"