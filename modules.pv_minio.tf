module "deploy-persistence-minio" {
  source = "./persistence-minio"

  count = var.pv_minio_deploy ? 1 : 0

  kubernetes_mc_resource_group_name = var.kubernetes_mc_resource_group_name
  kubernetes_tenant_namespace       = var.kubernetes_tenant_namespace
  location                          = var.location
  pv_minio_provider                 = var.pv_minio_provider
  pv_minio_storage_account_type     = var.pv_minio_storage_account_type
  pv_minio_storage_class_name       = var.pv_minio_storage_class_name
  pv_minio_storage_gbi              = var.pv_minio_storage_gbi
  pv_minio_replicas                 = var.pv_minio_replicas
  pv_minio_disk_source_existing     = var.pv_minio_disk_source_existing
  pv_minio_disk_master_name         = var.pv_minio_disk_master_name
  project_stage                               = var.project_stage
  project_name                                = var.project_name
  customer_name                               = var.project_customer_name
  cost_center                                 = var.project_cost_center
}
