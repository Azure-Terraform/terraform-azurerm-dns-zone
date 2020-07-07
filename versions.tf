terraform {
  required_version = ">= 0.12.10"
}

provider "azurerm" {
  alias = "child"
  subscription_id = var.child_domain_subscription_id
  version = ">= 2.0.0"
  features {}
}

provider "azurerm" {
  alias = "parent"
  subscription_id = var.parent_domain_subscription_id
  version = ">= 2.0.0"
  features {}
}
