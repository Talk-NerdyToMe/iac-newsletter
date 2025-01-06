# Default provider configuration
provider "azurerm" {
  features {}
  subscription_id = "primary-subscription-id"
  alias          = "primary"
}

# DR environment provider
provider "azurerm" {
  features {}
  subscription_id = "dr-subscription-id"
  alias          = "dr"
}

# Using specific providers
resource "azurerm_resource_group" "primary" {
  provider = azurerm.primary
  name     = "primary-rg"
  location = "eastus"
}

resource "azurerm_resource_group" "dr" {
  provider = azurerm.dr
  name     = "dr-rg"
  location = "westus"
}
