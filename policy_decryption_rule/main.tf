resource "oci_network_firewall_network_firewall_policy_decryption_rule" "this" {
  name   = var.name
  action = var.action
  condition {
    destination_address = var.destination_address
    source_address      = var.source_address
  }
  dynamic "position" {
    for_each = var.position[*]
    content {
      after_rule  = var.decryption_rule_position.after_rule
      before_rule = var.decryption_rule_position.before_rule
    }
  }
  network_firewall_policy_id = var.network_firewall_policy_id
  decryption_profile         = var.decryption_profile
  secret                     = var.secret
}
