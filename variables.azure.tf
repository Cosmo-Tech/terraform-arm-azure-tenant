variable "deployment_type" {
  description = "Represents the kind of deployment. Currently two modes: ARM or Terraform"
  type        = string
  validation {
    condition = contains([
      "ARM",
      "Terraform"
    ], var.deployment_type)
    error_message = "Stage must be either: ARM or Terraform."
  }
}
variable "client_id" {
  description = "The client id"
}
variable "client_secret" {
  description = "The client secret"
}
variable "tenant_id" {
  description = "The tenant id"
}
variable "subscription_id" {
  description = "The subscription id"
}
variable "platform_object_id" {
  type = string
}
variable "identifier_uri" {
  description = "The platform identifier uri"
}
variable "tenant_resource_group" {
  description = "Resource group to create which will contain created Azure resources for this tenant"
  type        = string
}
variable "tenant_sp_name" {
  description = "The name of the platform on which we deploy the tenant"
  type        = string
}
variable "tenant_sp_object_id" {
  description = "The object id of the platform service principal"
  type        = string
}
variable "first_tenant_in_cluster" {
  type = bool
}