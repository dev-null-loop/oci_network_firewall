resource "oci_network_firewall_network_firewall_policy_tunnel_inspection_rule" "this" {
  condition {
    destination_address = var.condition.destination_address
    source_address      = var.condition.source_address
  }
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  protocol                   = var.protocol
  action                     = var.action
  dynamic "position" {
    for_each = var.position[*]
    content {
      after_rule  = position.value.after_rule
      before_rule = position.value.before_rule
    }
  }
  profile {
    must_return_traffic_to_source = var.must_return_traffic_to_source
  }
}
