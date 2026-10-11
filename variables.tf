variable "core_network_security_group_security_rules_lookup" {
  description = <<EOT
Map of core_network_security_group_security_rules_lookup, attributes below
Required:
    - network_security_group_id
Optional:
    - direction
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    network_security_group_id = string
    direction                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

