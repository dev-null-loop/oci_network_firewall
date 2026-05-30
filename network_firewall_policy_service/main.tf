resource "oci_network_firewall_network_firewall_policy_service" "this" {
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  dynamic "port_ranges" {
    for_each = var.port_ranges
    iterator = pr
    content {
      minimum_port = pr.value.minimum_port
      maximum_port = pr.value.maximum_port
    }
  }
  description = var.description
  type        = var.type
}
