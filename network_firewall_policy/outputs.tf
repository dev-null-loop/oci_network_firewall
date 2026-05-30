output "id" {
  description = "The OCID of the network firewall policy."
  value       = oci_network_firewall_network_firewall_policy.this.id
}

output "state" {
  description = "The current state of the network firewall policy."
  value       = oci_network_firewall_network_firewall_policy.this.state
}

output "time_created" {
  description = "The date and time the network firewall policy was created, expressed in RFC 3339 timestamp format."
  value       = oci_network_firewall_network_firewall_policy.this.time_created
}

output "time_updated" {
  description = "The date and time the network firewall policy was updated, expressed in RFC 3339 timestamp format."
  value       = oci_network_firewall_network_firewall_policy.this.time_updated
}
