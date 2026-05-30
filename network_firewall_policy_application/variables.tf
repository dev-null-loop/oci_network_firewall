variable "description" {
  description = "(Optional) (Updatable) The description of the application. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "icmp_code" {
  description = "(Optional) (Updatable) The value of the ICMP/ICMP_V6 message code (subtype) field as defined by [RFC 4443](https://www.rfc-editor.org/rfc/rfc4443.html#section-2.1)."
  type        = number
  default     = null
}

variable "icmp_type" {
  description = "(Required) (Updatable) The value of the ICMP/ICMP_V6 message type field as defined by [RFC 4443](https://www.rfc-editor.org/rfc/rfc4443.html#section-2.1)."
  type        = number
}

variable "name" {
  description = "(Required) Name of the application"
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "type" {
  description = "(Required) Describes the type of application. The accepted values are - * ICMP * ICMP_V6"
  type        = string
}
