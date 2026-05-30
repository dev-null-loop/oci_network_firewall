output "id" {
  description = "The OCID of the network firewall policy service."
  value       = oci_network_firewall_network_firewall_policy_service.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the service."
  value       = oci_network_firewall_network_firewall_policy_service.this.parent_resource_id
}
