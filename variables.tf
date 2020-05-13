# SRE Subscription
## This should be the output of the subscription module
variable "sre_subscription_id" {
  description = "ID of the target subscription"
  type = string
}

variable "sre_resource_group_name" {
  description = "Name of the target resource group"
  type = string
}

# IOG Subscription
variable "iog_subscription_id" {
  description = "ID of the parent subscription - This is the owner of the root domain"
  type = string
}

variable "iog_resource_group_name" {
  description = "Name of the parent subscription - This is the owner of the root domain"
  type = string
}

# Domain
variable "domain_prefix" {
  description = "Zone prefix"
  type = string
}

# Meta Data
variable "tags" {
  description = "Tags to be applied to resources (inclusive)"
  type        = map(string)
}

variable "names" {
  description = "Names to be applied to resources (inclusive)"
  type        = object({
                  environment  = string
                  location     = string
                  market       = string
                  product_name = string
                })
}