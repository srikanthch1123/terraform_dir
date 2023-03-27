terraform {
  # backend "azurerm" {
  #   resource_group_name   = "zgebs-workbench-dev-storage-rg"
  #   storage_account_name  = "zgbswbdevstorage"
  #   container_name        = "tfstatefile-storage"
  #   key                   = "terraform-storage.tfstate"
  # }
}

module "storage" {
  source              = "../../../module/Storage"
  storage_account_name = var.storage_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "storage-containers" {
  source = "../../../module/storage-containers"
  storage_account_name = module.storage.storage_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
  for_each = var.container_names
  container_names = each.value["container_name"]
  blob_storage_name = each.value["container_name"]

  
  

  # for_each            = toset(["zgebs-wb-dev-dgv-publicftpblob0198", "zgebs-wb-dev-fscdinv-publicftpblob0198", "zgebs-wb-dev-fcsdbp-publicftpblob0198", "zgebs-wb-dev-myz-publicftpblob0198", "zgebs-wb-dev-rwb-publicftpblob0198"])
  # storage_account_name                       = each.value[storage_account_name]
}