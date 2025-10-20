terraform {
  required_version = ">= 1.8.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.41.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "stortask5"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    resource_group_name  = "tfstate"
    use_oidc             = true
  }
}


provider "azurerm" {
  features {}
  use_oidc        = true
  subscription_id = var.subscription_id
}
