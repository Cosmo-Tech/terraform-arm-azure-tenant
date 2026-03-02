module "azure-tenant-prerequisites" {
  source = "./azure-tenant-prerequisites"

  count = var.azure_prerequisites_deploy ? 1 : 0

  tenant_id                      = var.tenant_id
  client_id                      = var.client_id
  client_secret                  = var.client_secret
  location                       = var.location
  platform_url                   = var.platform_url
  identifier_uri                 = var.identifier_uri
  project_stage                  = var.project_stage
  project_name                   = var.project_name
  owner_list                     = var.owner_list
  audience                       = var.audience
  tenant_resource_group          = var.tenant_resource_group
  dns_record                     = var.network_dns_record
  dns_zone_name                  = var.network_dns_zone_name
  virtual_network_address_prefix = var.network_tenant_address_prefix
  subnet_name                    = var.network_subnet_name
  dns_zone_rg                    = var.dns_zone_rg
  customer_name                  = var.project_customer_name
  user_app_role                  = var.user_app_role
  image_path                     = var.image_path
  api_version_path               = var.api_version_path
  servlet_context_path           = var.api_servlet_context_path
  create_restish                 = var.create_restish
  create_powerbi                 = var.create_powerbi
  create_babylon                 = var.create_babylon
  create_platform                = var.create_platform
  cost_center                    = var.project_cost_center
  kubernetes_tenant_namespace    = var.kubernetes_tenant_namespace
  cluster_name                   = var.cluster_name
  tags                           = var.tags
}