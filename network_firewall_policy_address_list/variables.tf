variable "addresses" {
  description = "(Required when type=FQDN | IP) (Updatable) List of addresses."
  type        = list(string)
}

variable "description" {
  description = "(Optional) (Updatable) The description of the address list. This field can be used to add additional info."
  type        = string
  default     = null
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
