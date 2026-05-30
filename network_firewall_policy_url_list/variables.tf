variable "description" {
  description = "(Optional) (Updatable) The description of the Url list. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Unique name to identify the group of urls to be used in the policy rules."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "urls" {
  description = "(Required) (Updatable) List of urls."
  type = list(object({
    pattern = string
    type    = string
  }))
}
