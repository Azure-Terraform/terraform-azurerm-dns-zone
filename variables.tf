variable "child_domain_subscription_id" {
  description = "ID of the target subscription"
  type = string
}

variable "child_domain_resource_group_name" {
  description = "Name of the target resource group"
  type = string
}

variable "child_domain_prefix" {
  description = "child domain prefix (<child>.<domain>.<prefix>.<parent domain>)"
  type = string
}

variable "parent_domain_subscription_id" {
  description = "ID of the parent subscription - This is the owner of the parent domain"
  type = string
}

variable "parent_domain_resource_group_name" {
  description = "Name of the parent resource_group - This is the owner of the root domain"
  type = string
}

variable "parent_domain" {
  description = "parent domain"
  type        = string
}

# Meta Data
variable "tags" {
  description = "Tags to be applied to resources (inclusive)"
  type        = map(string)
}
