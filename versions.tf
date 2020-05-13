terraform {
  required_version = ">= 0.12.10"
}

provider "azurerm" {
  version = ">= 2.0.0"
  features {}
  subscription_id = var.sre_subscription_id
}

provider "azurerm" {
  version = ">= 2.0.0"
  features {}
  alias = "iog"
  subscription_id = var.iog_subscription_id
}
