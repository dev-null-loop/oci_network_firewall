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
  timeouts {
    create = "35m"
    update = "10m"
    delete = "10m"
  }
}

# oci_network_firewall_network_firewall.this: Creation complete after 37m6s [id=ocid1.networkfirewall.oc1.eu-frankfurt-1.amaaaaaao7vto7iaxgl6w4kxyy2ne2l6obggi2oguvkz5lsmrj6uveowwtsa]

# TODO: check policy state before apply
# Error: 409-IncorrectState, Firewall policy's lifecycle state is not ACTIVE
# Suggestion: The resource is in a conflicted state. Please retry again or contact support for help with service: Network Firewall
# Documentation: https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/network_firewall_network_firewall
# API Reference: https://docs.oracle.com/iaas/api/#/en/network-firewall/20230501/NetworkFirewall/CreateNetworkFirewall
# Request Target: POST https://network-firewall.eu-frankfurt-1.ocs.oraclecloud.com/20230501/networkFirewalls
# Provider version: 6.23.0, released on 2025-01-22.
# Service: Network Firewall
# Operation Name: CreateNetworkFirewall
# OPC request ID: 35b7faf516a255f4063cf60a06a2e264/3E906D8E2D23424698225107F919AF91/15F63EA6226627E09B550C4593854B59

# TODO enable logs: threat/traffic/tunnel inspection
# https://www.thatfinnishguy.blog/2024/05/16/installing-oci-network-firewall-design/
# NoTE from web console: It can take about 30 minutes for the network firewall to become active. View the work request.
# TODO https://docs.oracle.com/en/learn/oci-network-firewall-lb/index.html#task-5-access-the-webpage
