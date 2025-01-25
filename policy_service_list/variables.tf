variable "name" {
  description = "(Required) Name of the service Group."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "services" {
  description = "(Required) (Updatable) Collection of service names. The services referenced in the service list must already be present in the policy before being used in the service list."
  type        = list(string)
}
