variable "apps" {
  description = "(Required) (Updatable) Collection of application names. The apps referenced in the application group must already be present in the policy before being used in the application group."
  type        = list(string)
}

variable "name" {
  description = "(Required) Name of the application group."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}
