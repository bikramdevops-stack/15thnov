terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "4.75.0"
    }
  }
  backend "azurerm" {}
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "nff" {
    name="hellomyworld"
    location = "east us"
    tags = {
      owner="bikram"
    }
}