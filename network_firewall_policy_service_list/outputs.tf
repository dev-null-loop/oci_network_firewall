output "id" {
  description = "The OCID of the network firewall policy service list."
  value       = oci_network_firewall_network_firewall_policy_service_list.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the service list."
  value       = oci_network_firewall_network_firewall_policy_service_list.this.parent_resource_id
}

output "total_services" {
  description = "The total number of services in the service list."
  value       = oci_network_firewall_network_firewall_policy_service_list.this.total_services
}
