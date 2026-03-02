variable "kusto_auto_stop" {
  type = bool
}
variable "kusto_instance_type" {
  type = string
}
variable "kusto_instances" {
  type = number
}
variable "kusto_engine" {
  type = string
}
variable "kusto_trusted_external_tenants" {
  type = list(string)
}
variable "kusto_disk_encryption_enabled" {
  type = bool
}
variable "kusto_streaming_ingestion_enabled" {
  type = bool
}
variable "kusto_purge_enabled" {
  type = bool
}
variable "kusto_double_encryption_enabled" {
  type = bool
}
variable "kusto_public_network_access_enabled" {
  type = bool
}
variable "kusto_privatedns_zonename" {
  type = string
}
variable "kusto_deploy" {
  type = bool
}
