locals {
  container_registry_name = substr("acr${local.cleaned_tenant_name}${random_string.random_storage_id.result}", 0, 50)
}

module "create-container-registry" {
  source = "./create-container-registry"

  count = var.acr_deploy ? 1 : 0

  project_stage                               = var.project_stage
  project_name                                = var.project_name
  customer_name                               = var.project_customer_name
  cost_center                                 = var.project_cost_center
  container_name                = local.container_registry_name
  location                      = var.location
  resource_group                = var.tenant_resource_group
  tenant_sp_object_id           = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_platform_sp_object_id : var.tenant_sp_object_id
  deployment_type               = var.deployment_type
  admin_enabled                 = var.acr_admin_enabled
  quarantine_policy_enabled     = var.acr_quarantine_policy_enabled
  data_endpoint_enabled         = var.acr_data_endpoint_enabled
  public_network_access_enabled = var.acr_public_network_access_enabled
  zone_redundancy_enabled       = var.acr_zone_redundancy_enabled
  trust_policy                  = var.acr_trust_policy
  retention_policy_days         = var.acr_retention_policy
  kubernetes_tenant_namespace   = var.kubernetes_tenant_namespace

  depends_on = [
    module.azure-tenant-prerequisites,
    module.create-network-resources
  ]
}
