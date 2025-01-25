variable "name" {
  description = "(Required) Name for the decryption rule, must be unique within the policy."
  type        = string
}

variable "action" {
  description = "(Required) (Updatable) Action: * NO_DECRYPT - Matching traffic is not decrypted.* DECRYPT - Matching traffic is decrypted with the specified `secret` according to the specified `decryptionProfile`."
  type        = string
}

variable "destination_address" {
  description = "(Optional) (Updatable) An array of address list names to be evaluated against the traffic destination address."
  type        = list(string)
  default     = null
}

variable "source_address" {
  description = "(Optional) (Updatable) An array of address list names to be evaluated against the traffic source address."
  type        = list(string)
  default     = null
}

variable "position" {
  description = "(Optional) (Updatable) An object which defines the position of the rule. Only one of `after_rule` or `before_rule` should be provided."
  type = object({
    after_rule  = optional(string)
    before_rule = optional(string)
  })
  default = null
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "decryption_profile" {
  description = "(Required only when action is `DECRYPT`) (Updatable) The name of the decryption profile to use."
  type        = string
  default     = null
}

variable "secret" {
  description = "(Required only when action is `DECRYPT`) (Updatable) The name of a mapped secret. Its `type` must match that of the specified decryption profile."
  type        = string
  default     = null
}
