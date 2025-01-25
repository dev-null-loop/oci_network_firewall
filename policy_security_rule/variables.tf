variable "action" {
  description = "(Required) (Updatable) Types of Action on the Traffic flow."
  type        = string
  validation {
    condition     = contains(["ALLOW", "DROP", "REJECT", "INSPECT"], var.action)
    error_message = "Error: Invalid security rule action."
  }
}

variable "name" {
  description = "(Required) Name for the Security rule, must be unique within the policy."
  type        = string
}

variable "application" {
  description = "(Optional) (Updatable) An array of application group names to be evaluated against the traffic protocol and protocol-specific parameters."
  type        = list(string)
  default     = []
}

variable "destination_address" {
  description = "(Optional) (Updatable) An array of address list names to be evaluated against the traffic destination address."
  type        = list(string)
  default     = []
}

variable "service" {
  description = "(Optional) (Updatable) An array of service list names to be evaluated against the traffic protocol and protocol-specific parameters."
  type        = list(string)
  default     = []
}

variable "source_address" {
  description = "(Optional) (Updatable) An array of address list names to be evaluated against the traffic source address."
  type        = list(string)
  default     = []
}

variable "url" {
  description = "(Optional) (Updatable) An array of URL list names to be evaluated against the HTTP(S) request target."
  type        = list(string)
  default     = []
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "inspection" {
  description = "(Optional) (Updatable) Type of inspection to affect the traffic flow. This is only applicable if action is INSPECT."
  validation {
    condition     = contains(["INTRUSION_DETECTION", "INTRUSION_PREVENTION_PROXY"], var.inspection)
    error_message = "Error: Invalid security rule inspection. Use only INTRUSION_DETECTION or INTRUSION_PREVENTION."
  }
}
variable "position" {
  description = "- (Optional) (Updatable) An object which defines the position of the rule. Only one of the following position references should be provided."
  type = object({
    after_rule  = optional(string)
    before_rule = optional(string)
  })
  default = null
}
