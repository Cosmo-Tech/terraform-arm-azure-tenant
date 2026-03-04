output "out_acr_login_server" {
  value = var.acr_deploy ? module.create-container-registry.0.out_acr_login_server : ""
  sensitive = true
}

output "out_acr_login_username" {
  value = var.acr_deploy ? module.create-container-registry.0.out_acr_login_username : ""
  sensitive = true
}

output "out_acr_login_server_url" {
  value = var.acr_deploy ? module.create-container-registry.0.out_acr_login_server_url : ""
  sensitive = true
}

output "out_acr_login_password" {
  value     = var.acr_deploy ? module.create-container-registry.0.out_acr_login_password : ""
  sensitive = true
}

output "out_adx_cluster_uri" {
  value = var.kusto_deploy ? module.create-kusto.0.out_adx_cluster_uri : ""
}

output "out_adx_cluster_principal_id" {
  value = var.kusto_deploy ? module.create-kusto.0.out_adx_cluster_principal_id : ""
}

output "out_adx_cluster_name" {
  value = var.kusto_deploy ? module.create-kusto.0.out_adx_cluster_name : ""
}

output "out_api_cosmo_url" {
  value = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_cosmo_api_url : "https://${var.network_dns_record}.${var.network_dns_zone_name}/${var.kubernetes_tenant_namespace}/${var.api_version_path}"
}

output "out_api_cosmo_scope" {
  value = "https://${var.network_dns_record}.${var.network_dns_zone_name}/${var.kubernetes_tenant_namespace}/.default"
}

output "out_api_cosmo_version_path" {
  value = var.api_version_path
}

output "out_kubernetes_tenant_namespace" {
  value = var.kubernetes_tenant_namespace
}

output "out_tenant_resource_group" {
  value = var.tenant_resource_group
}

output "out_tenant_sp_client_id" {
  value = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_platform_sp_client_id : var.client_id
}

output "out_tenant_sp_object_id" {
  value = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_platform_sp_object_id : var.tenant_sp_object_id
}

output "out_azure_resource_location" {
  value = var.location
}

output "out_azure_storage_account_name" {
  value = var.storage_account_deploy ? module.create-storage.0.out_storage_account_name : ""
}

output "out_azure_storage_account_key" {
  value     = var.storage_account_deploy ? module.create-storage.0.out_storage_account_key : ""
  sensitive = true
}

output "out_babylon_sp_client_id" {
  value = var.create_babylon ? module.azure-tenant-prerequisites.0.out_babylon_sp_client_id : var.babylon_sp_client_id
}

output "out_babylon_sp_object_id" {
  value = var.create_babylon ? module.azure-tenant-prerequisites.0.out_babylon_sp_object_id : var.babylon_sp_object_id
}

output "out_babylon_sp_client_secret" {
  value     = var.create_babylon ? module.azure-tenant-prerequisites.0.out_babylon_sp_client_secret : var.babylon_sp_client_secret
  sensitive = true
}

output "out_subscription_id" {
  value = var.subscription_id
}

output "out_identifier_uri" {
  value = var.identifier_uri
}

output "out_monitoring_namespace" {
  value = var.monitoring_namespace
}

output "out_restish_sp_client_id" {
  value = var.create_restish ? module.azure-tenant-prerequisites.0.out_restish_sp_client_id : var.restish_sp_client_id
}

output "out_restish_sp_client_secret" {
  value     = var.create_restish ? module.azure-tenant-prerequisites.0.out_restish_sp_client_secret : var.restish_sp_client_secret
  sensitive = true
}

output "out_swagger_sp_client_id" {
  value = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_swagger_sp_client_id : var.swagger_sp_client_id
}

output "out_babylon_sp_name" {
  value = var.create_babylon ? module.azure-tenant-prerequisites.0.out_babylon_sp_name : ""
}

output "out_platform_sp_name" {
  value = var.create_platform ? module.azure-tenant-prerequisites.0.out_platform_name : ""
}

output "out_swagger_sp_name" {
  value = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_swagger_name : ""
}
