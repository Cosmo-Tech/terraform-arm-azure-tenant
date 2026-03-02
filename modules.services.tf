module "services-secrets" {
  source = "./create-services-secrets"

  count = var.services_secrets_create ? 1 : 0

  argo_database                 = var.argo_database
  postgresql_initdb_secret_name = var.postgresql_initdb_secret_name
  postgresql_secret_name        = var.postgresql_secret_name
  argo_postgresql_user          = var.postgresql_argo_user
  cosmotech_api_admin_username  = var.postgresql_cosmotech_api_admin_username
  cosmotech_api_reader_username = var.postgresql_cosmotech_api_reader_username
  cosmotech_api_writer_username = var.postgresql_cosmotech_api_writer_username
  monitoring_namespace          = var.monitoring_namespace
  kubernetes_namespace          = var.kubernetes_tenant_namespace
  first_tenant_in_cluster       = var.first_tenant_in_cluster
  argo_workflows_s3_username    = var.argo_workflows_s3_username
  cosmotech_api_s3_username     = var.api_s3_username
  # acr
  acr_admin_password = var.acr_deploy ? module.create-container-registry.0.out_acr_login_password : ""
  acr_admin_username = var.acr_deploy ? module.create-container-registry.0.out_acr_login_username : ""
  acr_login_server   = var.acr_deploy ? module.create-container-registry.0.out_acr_login_server : ""

  # kusto
  kusto_data_ingestion_uri = var.kusto_deploy ? module.create-kusto.0.out_adx_cluster_ingestion_uri : ""
  kusto_name               = var.kusto_deploy ? module.create-kusto.0.out_adx_cluster_name : ""
  kusto_principal_id       = var.kusto_deploy ? module.create-kusto.0.out_adx_cluster_principal_id : ""

  # storage
  storage_account_name               = var.storage_account_deploy ? module.create-storage.0.out_storage_account_name : ""
  storage_account_primary_access_key = var.storage_account_deploy ? module.create-storage.0.out_storage_account_key : ""

  # platform
  platform_client_id = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_platform_sp_client_id : ""
  platform_password  = var.azure_prerequisites_deploy ? module.azure-tenant-prerequisites.0.out_platform_sp_client_secret : ""
}
