output "core_network_security_group_security_rules_lookup_id" {
  description = "Map of id values across all core_network_security_group_security_rules_lookup, keyed the same as var.core_network_security_group_security_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_network_security_group_security_rules.core_network_security_group_security_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_network_security_group_security_rules_lookup_direction" {
  description = "Map of direction values across all core_network_security_group_security_rules_lookup, keyed the same as var.core_network_security_group_security_rules_lookup except keys with no direction are omitted"
  value       = { for k, v in data.oci_core_network_security_group_security_rules.core_network_security_group_security_rules_lookup : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "core_network_security_group_security_rules_lookup_filter" {
  description = "Map of filter values across all core_network_security_group_security_rules_lookup, keyed the same as var.core_network_security_group_security_rules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_network_security_group_security_rules.core_network_security_group_security_rules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_network_security_group_security_rules_lookup_network_security_group_id" {
  description = "Map of network_security_group_id values across all core_network_security_group_security_rules_lookup, keyed the same as var.core_network_security_group_security_rules_lookup except keys with no network_security_group_id are omitted"
  value       = { for k, v in data.oci_core_network_security_group_security_rules.core_network_security_group_security_rules_lookup : k => v.network_security_group_id if v.network_security_group_id != null && length(v.network_security_group_id) > 0 }
}
output "core_network_security_group_security_rules_lookup_security_rules" {
  description = "Map of security_rules values across all core_network_security_group_security_rules_lookup, keyed the same as var.core_network_security_group_security_rules_lookup except keys with no security_rules are omitted"
  value       = { for k, v in data.oci_core_network_security_group_security_rules.core_network_security_group_security_rules_lookup : k => v.security_rules if v.security_rules != null && length(v.security_rules) > 0 }
}

