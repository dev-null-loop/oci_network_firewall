resource "oci_network_firewall_network_firewall_policy_security_rule" "this" {
  action = var.action
  condition {
    application         = var.condition.application
    destination_address = var.condition.destination_address
    service             = var.condition.service
    source_address      = var.condition.source_address
    url                 = var.condition.url
  }
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  description                = var.description
  dynamic "position" {
    for_each = var.position[*]
    iterator = po
    content {
      after_rule  = po.value.after_rule
      before_rule = po.value.before_rule
    }
  }
  inspection     = var.inspection
  priority_order = var.priority_order
}
