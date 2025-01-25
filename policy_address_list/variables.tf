variable "addresses" {
  description = "Required) (Updatable) List of addresses."
  type        = list(string)
}

variable "name" {
  description = "(Required) Unique name to identify the group of addresses to be used in the policy rules."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "type" {
  description = "(Required) Type of address List. The accepted values are - * FQDN * IP"
  type        = string
}
