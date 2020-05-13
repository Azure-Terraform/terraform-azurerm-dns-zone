
output "name" {
  value = "${lower(var.domain_prefix)}.lnrisk.io"
  description = "The DNS zone that has been delegated to you"
}