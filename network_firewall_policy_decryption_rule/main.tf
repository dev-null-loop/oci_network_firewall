resource "oci_network_firewall_network_firewall_policy_decryption_rule" "this" {
  action = var.action
  condition {
    destination_address = var.condition.destination_address
    source_address      = var.condition.source_address
  }
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  decryption_profile         = var.decryption_profile
  description                = var.description
  dynamic "position" {
    for_each = var.position[*]
    iterator = po
    content {
      after_rule  = po.value.after_rule
      before_rule = po.value.before_rule
    }
  }
  secret         = var.secret
  priority_order = var.priority_order
  secrets        = var.secrets
}
