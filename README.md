## Terraform ARM v3 Azure Tenant

[![Terraform](https://img.shields.io/badge/Terraform-Modules-844FBA?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Backend: azurerm](https://img.shields.io/badge/Backend-azurerm-0078D4?logo=microsoftazure&logoColor=white)](https://developer.hashicorp.com/terraform/language/settings/backends/azurerm)
[![Provider: azurerm](https://img.shields.io/badge/Provider-azurerm-0078D4?logo=microsoftazure&logoColor=white)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
[![Provider: azuread](https://img.shields.io/badge/Provider-azuread-0078D4?logo=microsoftazure&logoColor=white)](https://registry.terraform.io/providers/hashicorp/azuread/latest)
[![Provider: kubernetes](https://img.shields.io/badge/Provider-kubernetes-326CE5?logo=kubernetes&logoColor=white)](https://registry.terraform.io/providers/hashicorp/kubernetes/latest)
[![Provider: kubectl](https://img.shields.io/badge/Provider-kubectl-2C3E50)](https://registry.terraform.io/providers/alekc/kubectl/latest)
[![Provider: http](https://img.shields.io/badge/Provider-http-6E6E6E)](https://registry.terraform.io/providers/hashicorp/http/latest)
[![Provider: random](https://img.shields.io/badge/Provider-random-6E6E6E)](https://registry.terraform.io/providers/hashicorp/random/latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

This `terraform-arm-azure-tenant` module helps you set up Azure resources for a Cosmo Tech tenant. It creates:

- A tenant Azure Resource Group.
- Networking that connects the tenant to an existing platform Virtual Network (with peering and DNS link).
- Optional Azure services: Storage Account, Container Registry (ACR), Event Hub, and Kusto.
- A Kubernetes namespace in your AKS cluster.
- Persistent Volumes for MinIO, Postgres, and Redis.
- Kubernetes secrets for platform services.

The repository includes a main Terraform configuration and several local modules to deploy all required tenant infrastructure on Azure.

## Diagrams

### Deployment workflow (high-level)

```mermaid
flowchart TD
    A[terraform init] --> B[terraform plan]
    B --> C[terraform apply]

    subgraph Infrastructure_Azure
        C --> RG[Root: azurerm_resource_group.tenant_rg]
        RG --> NET[Module: create-network-resources]
        
        NET --> VNET[Creates: VNet + Subnet]
        NET --> PEER[Creates: VNet peerings]
        NET --> DNSLINK[Creates: DNS Link]

        NET --> STG[Module: create-storage]
        NET --> ACR[Module: create-container-registry]
        NET --> EH[Module: create-eventhub]
        NET --> KUSTO[Module: create-kusto]
    end

    subgraph Kubernetes_Namespace
        C --> NS[Root: kubernetes_namespace.main_namespace]
        NS --> PV1[Module: persistence-minio]
        NS --> PV2[Module: persistence-postgres]
        NS --> PV3[Module: persistence-redis]
    end

    %% Secrets Management
    STG --> SECRETS[Module: create-services-secrets]
    ACR --> SECRETS
    KUSTO --> SECRETS
    SECRETS --> NS[Secrets created in Kubernetes namespace]
```

### Network module architecture

```mermaid
flowchart LR
  PlatformVNet[(Platform VNet)] --- Peer2[Peering: platform -> tenant]
  TenantRG[Tenant Resource Group] --> TenantVNet[(Tenant VNet)]
  TenantVNet --- Peer1[Peering: tenant -> platform]
  TenantVNet --> Subnet[Subnet + Storage Service Endpoint]
  DNSZone[(Private DNS Zone in platform RG)] --- Link[VNet link to tenant VNet]
  Link --- TenantVNet
```

## Features

- AzureRM backend initialization helper script (Azure Storage backend).
- Explicit modular breakdown per Azure component:
  - Network resources + VNet peering
  - Storage account
  - Azure Container Registry (ACR)
  - Azure Event Hub
  - Azure Data Explorer (Kusto / ADX)
  - Service secrets creation (Kubernetes secrets)
  - Persistent volumes for MinIO / Postgres / Redis

## Tech Stack

- **Terraform** `>= 1.3.9`
- **Providers** (pinned in `providers.tf`)
  - `hashicorp/azurerm` `4.19.0`
  - `hashicorp/azuread` `3.1.0`
  - `hashicorp/kubernetes` `2.35.1`
  - `alekc/kubectl` `2.1.3`
  - `hashicorp/http` `3.4.5`
- **Shell scripts** (`bash` / `sh`) for init/plan/apply and output export
- **Azure CLI** (`az`) required by `_run-init.sh`

## Installation

### Prerequisites

- Terraform `>= 1.3.9`
- Azure CLI (`az`)
- Access to an Azure subscription + permissions to create resources
- A kubeconfig context matching the AKS cluster name
  - `providers.tf` uses `~/.kube/config` and `config_context = var.cluster_name`

### Clone

```bash
git clone <this-repo-url>
cd terraform-arm-azure-tenant
```

## Usage

### Typical workflow (plan/apply)

1. Create or edit your variable file (`terraform.tfvars` or another `*.tfvars`).
2. Initialize the backend.
3. Plan and apply.

This repo provides scripts that encode that flow:

```bash
./_run-init.sh <state_key>
./_run-plan.sh <var-file>
./_run-apply.sh
```
Or, simply run the `_run-terraform.sh` script to execute all three steps (init, plan, apply) in sequence. The script will stop if any step fails.

```bash
./_run-terraform.sh
```

### Providers

Providers are pinned in `providers.tf`. The Kubernetes provider uses:

- `config_path = "~/.kube/config"`
- `config_context = var.cluster_name`

So `cluster_name` must match a kubeconfig context.

## License

See `LICENSE`.


Made with :heart: by Cosmo Tech DevOps team