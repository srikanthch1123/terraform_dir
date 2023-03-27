terraform {
  # backend "azurerm" {
  #   resource_group_name   = "zgebs-workbench-dev-storage-rg"
  #   storage_account_name  = "zgbswbdevstorage"
  #   container_name        = "tfstatefile-storage"
  #   key                   = "terraform-storage.tfstate"
  # }
}

module "storage" { 
  source              = "../../../module/Storage"   //source of the storage account code
  storage_account_name = var.storage_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
}