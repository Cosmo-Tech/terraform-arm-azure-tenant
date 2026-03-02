variable "platform_url" {
  type = string
}
variable "owner_list" {
  type = list(string)
}
variable "audience" {
  type = string
  validation {
    condition = contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs"
    ], var.audience)
    error_message = "Only AzureADMyOrg and AzureADMultipleOrgs are supported for audience."
  }
}
variable "location" {
  type = string
}
variable "dns_zone_rg" {
  type = string
}
variable "user_app_role" {
  type = list(object({
    description  = string
    display_name = string
    id           = string
    role_value   = string
  }))
}
variable "image_path" {
  type = string
}
variable "create_restish" {
  type = bool
}
variable "create_powerbi" {
  type = bool
}
variable "create_babylon" {
  type = bool
}
variable "create_secrets" {
  type = bool
}
variable "create_platform" {
  type = string
}
variable "azure_prerequisites_deploy" {
  type = bool
}
variable "restish_sp_client_id" {
  type = string
}
variable "restish_sp_client_secret" {
  type      = string
  sensitive = true
}
variable "swagger_sp_client_id" {
  type = string
}
variable "platform_name" {
  type = string
}
variable "babylon_sp_client_id" {
  type = string
}
variable "babylon_sp_object_id" {
  type = string
}
variable "babylon_sp_client_secret" {
  type      = string
  sensitive = true
}
