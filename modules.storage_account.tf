

locals {
  storage_name = substr("${local.cleaned_tenant_name}${random_string.random_storage_id.result}", 0, 23)
}

module "create-storage" {
  source = "./create-storage"

  count = var.storage_account_deploy ? 1 : 0

  project_stage                               = var.project_stage
  project_name                                = var.project_name
  customer_name                               = var.project_customer_name
  cost_center                                 = var.project_cost_center
  storage_name                    = local.storage_name
  location                        = var.location
  resource_group                  = var.tenant_resource_group
  storage_tier                    = split("_", var.storage_class_sku)[0]
  storage_replication_type        = split("_", var.storage_class_sku)[1]
  storage_kind                    = var.storage_kind
  public_network_access_enabled   = var.storage_public_network_access_enabled
  default_to_oauth_authentication = var.storage_default_to_oauth_authentication
  min_tls_version                 = var.storage_min_tls_version
  shared_access_key_enabled       = var.storage_shared_access_key_enabled
  enable_https_traffic_only       = var.storage_enable_https_traffic_only
  access_tier                     = var.storage_access_tier
  private_dns_zone_id             = var.network_deploy ? module.create-network-resources.0.out_blob_private_dns_zone_id : ""
  subnet_id                       = var.network_deploy ? module.create-network-resources.0.out_subnet_id : ""
  kubernetes_tenant_namespace     = var.kubernetes_tenant_namespace
  storage_default_action          = var.storage_default_action
  storage_csm_ip                  = var.storage_csm_ip

  depends_on = [module.create-network-resources]
}
