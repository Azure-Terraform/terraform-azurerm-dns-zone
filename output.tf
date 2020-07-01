output "name" {
  value       = "${lower(var.domain_prefix)}.lnrisk.io"
  description = "The DNS zone that has been delegated to you"
  depends_on  = [
    # ensure resources are created prior to outputs
    azurerm_dns_ns_record.iog,
    azurerm_dns_zone.sre
  ]
}
