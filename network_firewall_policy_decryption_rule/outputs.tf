output "id" {
  description = "The OCID of the network firewall policy decryption rule."
  value       = oci_network_firewall_network_firewall_policy_decryption_rule.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the decryption rule."
  value       = oci_network_firewall_network_firewall_policy_decryption_rule.this.parent_resource_id
}
