variable "action" {
  description = "(Required) (Updatable) Action."
  type        = string
}

variable "condition" {
  description = "(Required) (Updatable) Match criteria used in Decryption Rule used on the firewall policy rules."
  type = object({
    destination_address = optional(list(string), [])
    source_address      = optional(list(string), [])
  })
}

variable "decryption_profile" {
  description = "(Required only when action is `DECRYPT`) (Updatable) The name of the decryption profile to use."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The description of the decryption rule. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Name for the decryption rule, must be unique within the policy."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "position" {
  description = "(Optional) (Updatable) An object which defines the position of the rule. Only one of `after_rule` or `before_rule` should be provided."
  type = object({
    after_rule  = optional(string)
    before_rule = optional(string)
  })
  default = null
}

variable "priority_order" {
  description = "Priority order of the decryption rule."
  type        = string
  default     = null
}

variable "secret" {
  description = "(Required only when action is `DECRYPT`) (Updatable) The name of a mapped secret. Its `type` must match that of the specified decryption profile."
  type        = string
  default     = null
}

variable "secrets" {
  description = "(Required only when action is `DECRYPT`) (Updatable) An array of mapped secrets. Its `type` must match that of the specified decryption profile."
  type        = list(string)
  default     = []
}
