resource "azurerm_resource_group" "example" {
name     = "rg-${terraform.workspace}"
location = var.location
tags = {
Environment = terraform.workspace
}
}
