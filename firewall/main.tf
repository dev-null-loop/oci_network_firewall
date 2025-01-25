data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_network_firewall_network_firewall" "this" {
  compartment_id             = var.compartment_id
  network_firewall_policy_id = var.policy_id
  subnet_id                  = var.subnet_id
  availability_domain        = local.ads[var.availability_domain - 1].name
  defined_tags               = var.defined_tags
  display_name               = var.display_name
  freeform_tags              = var.freeform_tags
  ipv4address                = var.ipv4address
  ipv6address                = var.ipv6address
  network_security_group_ids = var.network_security_group_ids
}
