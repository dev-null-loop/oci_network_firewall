variable "name" {
  description = "(Required) Unique name to identify the group of urls to be used in the policy rules."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "mapped_secret_source" {
  description = "(Required) Source of the secrets, where the secrets are stored. The only accepted value is `OCI_VAULT`"
  type        = string
  default     = "OCI_VAULT"
}

variable "type" {
  description = "(Required) Type of the secrets mapped based on the policy."
  type        = string
  validation {
    condition     = contains(["SSL_INBOUND_INSPECTION", "SSL_FORWARD_PROXY"], var.type)
    error_message = "Error: Invalid mapped secret type. Use only SSL_INBOUND_INSPECTION or SSL_FORWARD_PROXY"
  }
}

variable "vault_secret_id" {
  description = "(Required) (Updatable) OCID for the Vault Secret to be used."
  type        = string
}

variable "version_number" {
  description = "(Required) (Updatable) Version number of the secret to be used."
  type        = number
}
