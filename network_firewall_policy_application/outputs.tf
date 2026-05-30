output "id" {
  description = "The OCID of the network firewall policy application."
  value       = oci_network_firewall_network_firewall_policy_application.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the application."
  value       = oci_network_firewall_network_firewall_policy_application.this.parent_resource_id
}
