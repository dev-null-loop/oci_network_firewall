resource "oci_network_firewall_network_firewall_policy_mapped_secret" "this" {
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  source                     = var.mapped_secret_source
  type                       = var.type
  vault_secret_id            = var.vault_secret_id
  version_number             = var.version_number
}
