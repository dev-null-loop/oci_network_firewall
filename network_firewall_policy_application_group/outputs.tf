output "id" {
  description = "The OCID of the network firewall policy application group."
  value       = oci_network_firewall_network_firewall_policy_application_group.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the application group."
  value       = oci_network_firewall_network_firewall_policy_application_group.this.parent_resource_id
}

output "total_apps" {
  description = "The total number of applications in the group."
  value       = oci_network_firewall_network_firewall_policy_application_group.this.total_apps
}
