output "id" {
  description = "id of dns child zone"
  value = azurerm_dns_zone.child.id
}

output "name" {
  description = "The DNS zone that has been delegated to you"
  value       = "${lower(var.child_domain_prefix)}.${lower(var.parent_domain)}"
  depends_on  = [
    # ensure resources are created prior to outputs
    azurerm_dns_ns_record.child,
    azurerm_dns_zone.child
  ]
}

output "resource_group_name" {
  description = "The resource group which contains the child zone"
  value       = var.child_domain_resource_group_name
}

output "subscription_id" {
  description = "The subscription_id which contains the child zone"
  value       = var.child_domain_subscription_id
}
