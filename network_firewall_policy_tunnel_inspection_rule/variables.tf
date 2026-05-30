variable "action" {
  description = "(Optional) (Updatable) Types of Inspect Action on the traffic flow."
  type        = string
  default     = null
}

variable "condition" {
  description = "(Required) (Updatable) Criteria to evaluate against incoming network traffic. A match occurs when at least one item in the array associated with each specified property corresponds with the relevant aspect of the traffic."
  type = object({
    destination_address = optional(list(string), [])
    source_address      = optional(list(string), [])
  })
}

variable "description" {
  description = "(Optional) (Updatable) The description of the tunnel inspect rule. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Name for the Tunnel Inspection Rule, must be unique within the policy."
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

variable "profile" {
  description = "(Optional) (Updatable) Vxlan Inspect profile used in Vxlan Tunnel Inspection Rules."
  type = object({
    must_return_traffic_to_source = optional(bool)
  })
  default = null
}

variable "protocol" {
  description = "(Required) (Updatable) Types of Tunnel Inspection Protocol to be applied on the traffic."
  type        = string
}
