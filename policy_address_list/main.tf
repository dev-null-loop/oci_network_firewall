output "WARNING" {
  value = "The Policy and its components can not be modified or deleted if the policy is attached to any firewall"
}

resource "oci_network_firewall_network_firewall_policy_address_list" "this" {
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  type                       = var.type
  addresses                  = var.addresses
}
