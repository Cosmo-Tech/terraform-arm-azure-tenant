variable "create_eventhub" {
  description = "Whether to create Azure Event Hub resources"
  type        = bool
}
variable "eventhub_capacity" {
  type = number
}
variable "eventhub_public_network_access_enabled" {
  type = bool
}
