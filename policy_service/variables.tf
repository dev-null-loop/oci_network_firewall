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
    maximum_port = optional(number)
    minimum_port = number
  }))
  default = []
}

variable "type" {
  description = "(Optional) Describes the type of Service. The accepted values are "
  type        = string
  validation {
    condition     = contains(["TCP_SERVICE", "UDP_SERVICE"], var.type)
    error_message = "Error: service type is TCP_SERVICE or UDP_SERVICE."
  }
}
