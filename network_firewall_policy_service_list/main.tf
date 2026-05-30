resource "oci_network_firewall_network_firewall_policy_service_list" "this" {
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  services                   = var.services
  description                = var.description
}
