resource "azurerm_resource_group" "rg" {
  name     = "${var.id}-assignment2-RG"
  location = var.location
  tags     = var.tags
}

