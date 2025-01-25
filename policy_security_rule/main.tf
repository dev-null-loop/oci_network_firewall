resource "oci_network_firewall_network_firewall_policy_security_rule" "this" {
  action = var.action
  name   = var.name
  condition {
    application         = var.application
    destination_address = var.destination_address
    service             = var.service
    source_address      = var.source_address
    url                 = var.url
  }
  network_firewall_policy_id = var.network_firewall_policy_id
  inspection                 = var.inspection
  dynamic "position" {
    for_each = var.position[*]
    content {
      after_rule  = var.position.after_rule
      before_rule = var.position.before_rule
    }
  }
}
