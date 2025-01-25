variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the Network Firewall."
  type        = string
}

variable "policy_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Network Firewall Policy."
  type        = string
}

variable "subnet_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet associated with the Network Firewall."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name for the Network Firewall. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "availability_domain" {
  description = "(Optional) Availability Domain where Network Firewall instance is created. To get a list of availability domains for a tenancy, use [ListAvailabilityDomains](https://docs.cloud.oracle.com/iaas/api/#/en/identity/20160918/AvailabilityDomain/ListAvailabilityDomains) operation. Example: `kIdk:PHX-AD-1`"
  type        = number
  default     = 1
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "ipv4address" {
  description = "(Optional) IPv4 address for the Network Firewall."
  type        = string
  default     = null
}

variable "ipv6address" {
  description = "(Optional) IPv6 address for the Network Firewall."
  type        = string
  default     = null
}


variable "network_security_group_ids" {
  description = "(Optional) (Updatable) An array of network security groups [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) associated with the Network Firewall."
  type        = list(string)
  default     = null
}
