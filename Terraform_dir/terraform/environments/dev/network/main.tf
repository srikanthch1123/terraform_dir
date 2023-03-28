module "network" {
  source = "../../../module/network"
  resource_group_name_network = var.resource_group_name_network
  location = var.location
  virtual_network_name = var.virtual_network_name
  vnet_address_space = var.vnet_address_space
  subnet_name = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}