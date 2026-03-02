locals {
  cleaned_tenant_name = replace(var.kubernetes_tenant_namespace, "/[[:^alnum:]]/", "")
}

data "azurerm_resource_group" "current" {
  count = var.deployment_type == "ARM" ? 1 : 0
  name  = var.resource_group
}

data "azurerm_kubernetes_cluster" "current" {
  count               = var.cloud_provider == "azure" ? 1 : 0
  name                = var.cluster_name
  resource_group_name = var.resource_group
}

data "azurerm_virtual_network" "current" {
  count               = var.cloud_provider == "azure" ? 1 : 0
  name                = var.network_name
  resource_group_name = var.resource_group
}

data "azurerm_resource_group" "tenant_rg" {
  count = var.deployment_type == "ARM" ? 1 : 0
  name  = var.tenant_resource_group
}

# create resource groupe azure
resource "azurerm_resource_group" "tenant_rg" {
  count    = var.cloud_provider == "azure" ? 1 : 0
  name     = var.tenant_resource_group
  location = var.location
}

resource "azurerm_role_assignment" "rg_owner" {
  count                = var.deployment_type != "ARM" && var.cloud_provider == "azure" ? 1 : 0
  scope                = azurerm_resource_group.tenant_rg.0.id
  role_definition_name = "Owner"
  principal_id         = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_platform_sp_object_id : var.tenant_sp_object_id
  timeouts {
    create = "3m"
  }
}

resource "azurerm_role_assignment" "rg_network_owner" {
  count                = var.deployment_type != "ARM" && var.cloud_provider == "azure" ? 1 : 0
  scope                = azurerm_resource_group.tenant_rg.0.id
  role_definition_name = "Owner"
  principal_id         = var.network_sp_object_id
  timeouts {
    create = "3m"
  }
}

resource "random_string" "random_storage_id" {
  length  = 6
  special = false
  upper   = false
}

# create namespace kubernetes
resource "kubernetes_namespace" "main_namespace" {
  metadata {
    name = var.kubernetes_tenant_namespace
  }
}
