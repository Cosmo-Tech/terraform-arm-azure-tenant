variable "network_sp_client_id" {
  type = string
}
variable "network_client_secret" {
  type = string
}
variable "network_sp_object_id" {
  type = string
}
variable "network_name" {
  type = string
}
variable "network_tenant_address_prefix" {
  type = string
}
variable "network_tenant_subnet_address_prefix" {
  type = string
}
variable "network_subnet_name" {
  type = string
}
variable "network_dns_record_create" {
  type = bool
}
variable "blob_private_dns_zonename" {
  type = string
}
variable "queue_private_dns_zonename" {
  type = string
}
variable "table_private_dns_zonename" {
  type = string
}
variable "eventhub_private_dns_zonename" {
  type = string
}
variable "adt_private_dns_zonename" {
  type = string
}
variable "network_dns_record" {
  type = string
}
variable "network_dns_zone_name" {
  type = string
}

variable "network_deploy" {
  type = bool
}