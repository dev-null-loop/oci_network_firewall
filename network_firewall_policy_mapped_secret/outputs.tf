output "id" {
  description = "The OCID of the network firewall policy mapped secret."
  value       = oci_network_firewall_network_firewall_policy_mapped_secret.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the mapped secret."
  value       = oci_network_firewall_network_firewall_policy_mapped_secret.this.parent_resource_id
}
