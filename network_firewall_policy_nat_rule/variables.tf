variable "action" {
  description = "(Required) (Updatable) action:"
  type        = string
}

variable "condition" {
  description = "(Required) (Updatable) Match criteria used in NAT rule used on the firewall policy."
  type = object({
    destination_address = optional(list(string), [])
    service             = optional(string)
    source_address      = optional(list(string), [])
  })
}

variable "description" {
  description = "(Optional) (Updatable) Description of a NAT rule. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Name for the NAT rule, must be unique within the policy."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "position" {
  description = "(Optional) (Updatable) An object which defines the position of the rule."
  type = object({
    after_rule  = optional(string)
    before_rule = optional(string)
  })
  default = null
}

variable "type" {
  description = "(Required) (Updatable) NAT type:"
  type        = string
}
