module "network_main" {
  source = "../../../module/network_main"
  resource_group_name_network = var.resource_group_name_network
  location = var.location
  virtual_network_name = var.virtual_network_name
  vnet_address_space = var.vnet_address_space
}
