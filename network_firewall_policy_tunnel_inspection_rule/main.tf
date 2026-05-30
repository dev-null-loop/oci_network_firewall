resource "oci_network_firewall_network_firewall_policy_tunnel_inspection_rule" "this" {
  condition {
    destination_address = var.condition.destination_address
    source_address      = var.condition.source_address
  }
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  protocol                   = var.protocol
  action                     = var.action
  description                = var.description
  dynamic "position" {
    for_each = var.position[*]
    iterator = po
    content {
      after_rule  = po.value.after_rule
      before_rule = po.value.before_rule
    }
  }
  dynamic "profile" {
    for_each = var.profile[*]
    iterator = pr
    content {
      must_return_traffic_to_source = pr.value.must_return_traffic_to_source
    }
  }
}
