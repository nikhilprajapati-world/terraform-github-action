terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.14.0"
    }
  }
  backend "azurerm" {
    container_name = "terrastate"
    storage_account_name = "terrastoracc2022"
    key = "terraform.tfstate"
    resource_group_name = "terraform-rg-dummy"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
#   subscription_id = var.arm_subscription_id
#   client_id       = var.arm_client_id
#   client_secret   = var.arm_client_secret
#   tenant_id       = var.arm_tenant_id
}

resource "azurerm_resource_group" "mynewrg" {
  name = var.rgname
  location = var.rglocation
}