output "id" {
  description = "The OCID of the network firewall."
  value       = oci_network_firewall_network_firewall.this.id
}

output "state" {
  description = "The current state of the network firewall."
  value       = oci_network_firewall_network_firewall.this.state
}

output "time_created" {
  description = "The date and time the network firewall was created, expressed in RFC 3339 timestamp format."
  value       = oci_network_firewall_network_firewall.this.time_created
}

output "time_updated" {
  description = "The date and time the network firewall was updated, expressed in RFC 3339 timestamp format."
  value       = oci_network_firewall_network_firewall.this.time_updated
}
