variable "description" {
  description = "(Optional) (Updatable) The description of the mapped secret. This field can be used to add additional info."
  type        = string
  default     = null
}

variable "name" {
  description = "(Required) Unique name to identify the group of urls to be used in the policy rules."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "source_type" {
  description = "(Required) Source of the secrets, where the secrets are stored. The only accepted value is `OCI_VAULT`"
  type        = string
}

variable "type" {
  description = "(Required) Type of the secrets mapped based on the policy."
  type        = string
}

variable "vault_secret_id" {
  description = "(Required) (Updatable) OCID for the Vault Secret to be used."
  type        = string
}

variable "version_number" {
  description = "(Required) (Updatable) Version number of the secret to be used."
  type        = number
}
