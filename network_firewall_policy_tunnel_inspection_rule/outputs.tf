output "id" {
  description = "The OCID of the tunnel inspection rule."
  value       = oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the tunnel inspection rule."
  value       = oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.this.parent_resource_id
}

output "priority_order" {
  description = "The priority order of the tunnel inspection rule."
  value       = oci_network_firewall_network_firewall_policy_tunnel_inspection_rule.this.priority_order
}
