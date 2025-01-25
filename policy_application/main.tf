resource "oci_network_firewall_network_firewall_policy_application" "this" {
  icmp_type                  = var.icmp_type
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  type                       = var.type
  icmp_code                  = var.icmp_code
}
