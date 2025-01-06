# Service Principal Authentication
provider "azurerm" {
  features {}
  
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Managed Identity Authentication
provider "azurerm" {
  features {}
  
  use_msi         = true
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# Variables
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure Service Principal Client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure Service Principal Client Secret"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}
