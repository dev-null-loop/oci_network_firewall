resource "oci_network_firewall_network_firewall_policy_application_group" "this" {
  apps                       = var.apps
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
}
