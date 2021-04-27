provider "azurerm" {
  alias = "child"
  subscription_id = var.child_domain_subscription_id
  features {}
}

provider "azurerm" {
  alias = "parent"
  subscription_id = var.parent_domain_subscription_id
  features {}
}
