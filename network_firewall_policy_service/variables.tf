variable "description" {
  description = "(Optional) (Updatable) The description of the service. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Name of the service"
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "port_ranges" {
  description = "(Required) (Updatable) List of port-ranges to be used."
  type = list(object({
    minimum_port = number
    maximum_port = optional(number)
  }))
}

variable "type" {
  description = "(Optional) Describes the type of Service. The accepted values are"
  type        = string
  default     = null
}
