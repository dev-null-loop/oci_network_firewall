variable "action" {
  description = "(Required) (Updatable) Types of Action on the Traffic flow."
  type        = string
}

variable "condition" {
  description = "(Required) (Updatable) Criteria to evaluate against network traffic."
  type = object({
    application         = optional(list(string), [])
    destination_address = optional(list(string), [])
    service             = optional(list(string), [])
    source_address      = optional(list(string), [])
    url                 = optional(list(string), [])
  })
}

variable "description" {
  description = "(Optional) (Updatable) The description of the security rule. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "inspection" {
  description = "(Required only when action is `INSPECT`) (Updatable) Type of inspection to affect the traffic flow."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Name for the Security rule, must be unique within the policy."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "position" {
  description = "(Optional) (Updatable) An object which defines the position of the rule. Only one of the following position references should be provided."
  type = object({
    after_rule  = optional(string)
    before_rule = optional(string)
  })
  default = null
}

variable "priority_order" {
  description = "Priority order of the security rule."
  type        = string
  default     = null
}
