output "id" {
  description = "The OCID of the network firewall policy URL list."
  value       = oci_network_firewall_network_firewall_policy_url_list.this.id
}

output "parent_resource_id" {
  description = "The parent resource ID of the URL list."
  value       = oci_network_firewall_network_firewall_policy_url_list.this.parent_resource_id
}

output "total_urls" {
  description = "The total number of URLs in the URL list."
  value       = oci_network_firewall_network_firewall_policy_url_list.this.total_urls
}
