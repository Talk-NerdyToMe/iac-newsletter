terraform {
backend "azurerm" {
resource_group_name  = "tfstate"
storage_account_name = "tfstate1234"
container_name      = "tfstate"
key                 = "prod.terraform.tfstate"
Copy# Enable state locking
lock_enabled = true
}
}
