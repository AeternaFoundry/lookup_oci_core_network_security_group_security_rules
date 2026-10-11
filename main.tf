data "oci_core_network_security_group_security_rules" "core_network_security_group_security_rules_lookup" {
  for_each = var.core_network_security_group_security_rules_lookup

  network_security_group_id = each.value.network_security_group_id
  direction                 = each.value.direction

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

