terraform {
  # backend "azurerm" {
  #   resource_group_name   = "zgebs-workbench-dev-storage-rg"
  #   storage_account_name  = "zgbswbdevstorage"
  #   container_name        = "tfstatefile-storage"
  #   key                   = "terraform-storage.tfstate"
  # }
}

module "storage" {
  source               = "../../../module/Storage"
  storage_account_name = var.storage_account_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  resource_group_name_network = var.resource_group_name_network
  subnet_snet_shared_ds_name = var.subnet_snet_shared_ds_name
  private_endpoint_storage_name = var.private_endpoint_storage_name
  storage_dns_zone_vnet_link_name = var.storage_dns_zone_vnet_link_name
  storage_dns_a_record_name = var.storage_dns_a_record_name
  storage_private_service_connection = var.storage_private_service_connection
}