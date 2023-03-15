terraform {
  backend "azurerm" {
    storage_account_name = "tfstaten01594361sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    resource_group_name  = "tfstate-n01594361-RG"
    subscription_id      = "d3587d3a-30f5-45ba-abe7-7f5d4b67c223"

  }
}
