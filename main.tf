
# SRE Resources
resource "azurerm_dns_zone" "sre" {
  name                = "${lower(var.domain_prefix)}.lnrisk.io"
  resource_group_name = var.sre_resource_group_name
  tags                = var.tags
}

# IOG Resources
resource "azurerm_dns_ns_record" "iog" {
    
  provider            = azurerm.iog
  name                = lower(var.domain_prefix)
  zone_name           = "lnrisk.io"
  resource_group_name = var.iog_resource_group_name
  ttl                 = 300
  tags                = var.tags

  records = azurerm_dns_zone.sre.name_servers

}
