output "id" {
  description = "The OCID of the network firewall policy NAT rule."
  value       = oci_network_firewall_network_firewall_policy_nat_rule.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the NAT rule."
  value       = oci_network_firewall_network_firewall_policy_nat_rule.this.parent_resource_id
}

output "priority_order" {
  description = "The priority order of the NAT rule."
  value       = oci_network_firewall_network_firewall_policy_nat_rule.this.priority_order
}
