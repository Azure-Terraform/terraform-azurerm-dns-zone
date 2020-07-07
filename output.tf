output "id" {
  description = "id of dns child zone"
  value = azurerm_dns_zone.child.id
}

output "name" {
  value       = "${lower(var.child_domain_prefix)}.${lower(var.parent_domain)}"
  description = "The DNS zone that has been delegated to you"
  depends_on  = [
    # ensure resources are created prior to outputs
    azurerm_dns_ns_record.child,
    azurerm_dns_zone.child
  ]
}
