output "id" {
  description = "The OCID of the network firewall policy decryption profile."
  value       = oci_network_firewall_network_firewall_policy_decryption_profile.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the decryption profile."
  value       = oci_network_firewall_network_firewall_policy_decryption_profile.this.parent_resource_id
}
