variable "name" {
  description = "(Required) Name of the decryption profile."
  type        = string
}

variable "network_firewall_policy_id" {
  description = "(Required) Unique Network Firewall Policy identifier"
  type        = string
}

variable "type" {
  description = "(Required) Describes the type of decryption profile. The accepted values are - * SSL_FORWARD_PROXY * SSL_INBOUND_INSPECTION"
  type        = string
}

variable "are_certificate_extensions_restricted" {
  description = "(Applicable only when type=SSL_FORWARD_PROXY) (Updatable) Whether to block sessions if the server's certificate uses extensions other than key usage and/or extended key usage."
  type        = bool
  default     = false
}

variable "is_auto_include_alt_name" {
  description = "(Applicable only when type=SSL_FORWARD_PROXY) (Updatable) Whether to automatically append SAN to impersonating certificate if server certificate is missing SAN."
  type        = bool
  default     = false
}

variable "is_expired_certificate_blocked" {
  description = "(Applicable only when type=SSL_FORWARD_PROXY) (Updatable) Whether to block sessions if server's certificate is expired."
  type        = bool
  default     = false
}

variable "is_out_of_capacity_blocked" {
  description = "(Optional) (Updatable) Whether to block sessions if the firewall is temporarily unable to decrypt their traffic."
  type        = bool
  default     = false
}

variable "is_unsupported_cipher_blocked" {
  description = "(Optional) (Updatable) Whether to block sessions if SSL cipher suite is not supported."
  type        = bool
  default     = false
}
variable "is_unsupported_version_blocked" {
  description = "(Optional) (Updatable) Whether to block sessions if SSL version is not supported."
  type        = bool
  default     = false
}

variable "is_revocation_status_timeout_blocked" {
  description = "(Applicable only when type=SSL_FORWARD_PROXY) (Updatable) Whether to block sessions if the revocation status check for server's certificate does not succeed within the maximum allowed time (defaulting to 5 seconds)."
  type        = bool
  default     = false
}

variable "is_unknown_revocation_status_blocked" {
  description = "(Applicable only when type=SSL_FORWARD_PROXY) (Updatable) Whether to block sessions if the revocation status check for server's certificate results in 'unknown'."
  type        = bool
  default     = false
}

variable "is_untrusted_issuer_blocked" {
  description = "(Applicable only when type=SSL_FORWARD_PROXY) (Updatable) Whether to block sessions if server's certificate is issued by an untrusted certificate authority (CA)."
  type        = bool
  default     = false
}
