variable "acr_admin_enabled" {
  type = bool
}
variable "acr_quarantine_policy_enabled" {
  type = bool
}
variable "acr_data_endpoint_enabled" {
  type = bool
}
variable "acr_public_network_access_enabled" {
  type = bool
}
variable "acr_zone_redundancy_enabled" {
  type = bool
}
variable "acr_trust_policy" {
  type = bool
}
variable "acr_retention_policy" {
  type = number
}
variable "acr_deploy" {
  type = bool
}