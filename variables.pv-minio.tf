variable "pv_minio_deploy" {
  type = bool
}
variable "pv_minio_storage_gbi" {
  type = number
}
variable "pv_minio_storage_account_type" {
  type = string
}
variable "pv_minio_replicas" {
  type = number
}
variable "pv_minio_storage_class_name" {
  type = string
}
variable "pv_minio_provider" {
  type = string
}
variable "pv_minio_disk_source_existing" {
  type = bool
}
variable "pv_minio_disk_master_name" {
  type = string
}