resource "oci_network_firewall_network_firewall" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
  ipv4address         = var.ipv4address
  ipv6address         = var.ipv6address
  dynamic "nat_configuration" {
    for_each = var.nat_configuration[*]
    iterator = nc
    content {
      must_enable_private_nat = nc.value.must_enable_private_nat
    }
  }
  network_firewall_policy_id = var.network_firewall_policy_id
  network_security_group_ids = var.network_security_group_ids
  security_attributes        = var.security_attributes
  shape                      = var.shape
  subnet_id                  = var.subnet_id
}
