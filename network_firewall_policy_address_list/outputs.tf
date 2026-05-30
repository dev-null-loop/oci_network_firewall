output "id" {
  description = "The OCID of the network firewall policy address list."
  value       = oci_network_firewall_network_firewall_policy_address_list.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the address list."
  value       = oci_network_firewall_network_firewall_policy_address_list.this.parent_resource_id
}

output "total_addresses" {
  description = "The total number of addresses in the address list."
  value       = oci_network_firewall_network_firewall_policy_address_list.this.total_addresses
}
