resource "azurerm_resource_group" "rg" {
  name     = "${var.id}-assignment1-RG"
  location = var.location
  tags     = var.tags
}

