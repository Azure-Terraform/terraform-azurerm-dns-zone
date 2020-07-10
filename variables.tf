variable "child_domain_subscription_id" {
  description = "ID of the target subscription"
  type = string
}

variable "child_domain_resource_group_name" {
  description = "name of the target resource group"
  type = string
}

variable "child_domain_prefix" {
  description = "child domain prefix (<child_domain_prefix>.<parent_domain>)"
  type = string
}

variable "parent_domain_subscription_id" {
  description = "ID of the parent subscription - This is the owner of the parent domain"
  type = string
}

variable "parent_domain_resource_group_name" {
  description = "name of the pre-existing parent resource_group - This is the owner of the root domain"
  type = string
}

variable "parent_domain" {
  description = "pre-existing parent domain in which to create the NS record for the child domain"
  type        = string
}

# Meta Data
variable "tags" {
  description = "Tags to be applied to resources (inclusive)"
  type        = map(string)
}
