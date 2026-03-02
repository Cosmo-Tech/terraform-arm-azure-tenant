variable "pv_redis_deploy" {
  type = bool
}
variable "pv_redis_storage_gbi" {
  type = number
}
variable "pv_redis_storage_account_type" {
  type = string
}
variable "pv_redis_storage_class_name" {
  type = string
}
variable "pv_redis_provider" {
  type = string
  validation {
    condition = contains([
      "azure",
      "longhorn",
    ], var.pv_redis_provider)
    error_message = "Provider must be either: azure, longhorn"
  }
}
variable "pv_redis_master_disk_source_existing" {
  type = bool
}
variable "pv_redis_replica_disk_source_existing" {
  type = bool
}
variable "pv_redis_disk_master_name" {
  type = string
}
variable "pv_redis_disk_replica_name" {
  type = string
}