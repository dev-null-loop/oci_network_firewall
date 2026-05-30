resource "oci_network_firewall_network_firewall_policy_application_group" "this" {
  name                       = var.name
  apps                       = var.apps
  network_firewall_policy_id = var.network_firewall_policy_id
  description                = var.description
}
