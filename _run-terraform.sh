#!/bin/sh

# Script to run terraform modules
# Usage :
# - ./_run-terraform.sh


# Stop script if missing dependency
required_commands="terraform az"
for command in $required_commands; do
    if [ -z "$(command -v $command)" ]; then
        echo "error: required command not found: \e[91m$command\e[97m"
        exit 1
    fi
done


# Deploy
./_run-init.sh  devops-test-azure-tenant-0001
./_run-plan.sh  terraform.tfvars
# ./_run-apply.sh