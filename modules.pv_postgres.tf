module "deploy-persistence-postgres" {
  source = "./persistence-postgres"

  count = var.pv_postgres_deploy ? 1 : 0

  kubernetes_mc_resource_group_name = var.kubernetes_mc_resource_group_name
  kubernetes_tenant_namespace       = var.kubernetes_tenant_namespace
  location                          = var.location
  pv_postgres_provider              = var.pv_postgres_provider
  pv_postgres_storage_account_type  = var.pv_postgres_storage_account_type
  pv_postgres_storage_class_name    = var.pv_postgres_storage_class_name
  pv_postgres_storage_gbi           = var.pv_postgres_storage_gbi
  pv_postgres_replicas              = var.pv_postgres_replicas
  pv_postgres_disk_source_existing  = var.pv_postgres_disk_source_existing
  pv_postgres_disk_master_name      = var.pv_postgres_disk_master_name
  project_stage                               = var.project_stage
  project_name                                = var.project_name
  customer_name                               = var.project_customer_name
  cost_center                                 = var.project_cost_center
}
