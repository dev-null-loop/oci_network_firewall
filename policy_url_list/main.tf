resource "oci_network_firewall_network_firewall_policy_url_list" "this" {
  name                       = var.name
  network_firewall_policy_id = var.network_firewall_policy_id
  dynamic "urls" {
    for_each = var.urls
    content {
      pattern = urls.value
      type    = "SIMPLE"
    }
  }
}
