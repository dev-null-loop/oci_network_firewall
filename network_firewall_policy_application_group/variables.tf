variable "apps" {
  description = "(Optional) (Updatable) Collection of application names."
  type        = list(string)
}

variable "description" {
  description = "(Optional) (Updatable) The description of the application group. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Name of the application group."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}
