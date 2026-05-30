resource "oci_network_firewall_network_firewall_policy_address_list" "this" {
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  type                       = var.type
  addresses                  = var.addresses
  description                = var.description
}
