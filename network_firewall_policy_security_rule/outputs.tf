output "id" {
  description = "The OCID of the network firewall policy security rule."
  value       = oci_network_firewall_network_firewall_policy_security_rule.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the security rule."
  value       = oci_network_firewall_network_firewall_policy_security_rule.this.parent_resource_id
}

output "priority_order" {
  description = "The priority order of the security rule."
  value       = oci_network_firewall_network_firewall_policy_security_rule.this.priority_order
}
