variable "storage_class_sku" {
  type = string
}
variable "storage_kind" {
  type = string
}
variable "storage_public_network_access_enabled" {
  type = bool
}
variable "storage_default_to_oauth_authentication" {
  type = bool
}
variable "storage_min_tls_version" {
  type = string
}
variable "storage_shared_access_key_enabled" {
  type = bool
}
variable "storage_enable_https_traffic_only" {
  type = bool
}
variable "storage_access_tier" {
  type = string
}
variable "storage_account_deploy" {
  type = bool
}

variable "storage_default_action" {
  type = string
}

variable "storage_csm_ip" {
  type = string
}
