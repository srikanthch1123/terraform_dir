module "network_main" {
  source = "../../../module/network_main"
  resource_group_name_network = var.resource_group_name_network
  location = var.location
  virtual_network_name = var.virtual_network_name
  vnet_address_space = var.vnet_address_space
}



module "network" {
  source = "../../../module/network"
  resource_group_name_network = module.network_main.resource_group_name_network
  location = var.location
  virtual_network_name = module.network_main.virtual_network_name
  vnet_address_space = var.vnet_address_space

  # subnet_name = var.subnet_name
  # subnet_address_prefixes = var.subnet_address_prefixes
  # for_each = var.subnet_list
  # subnet_name = each.value["subnet_name"]
  # subnet_address_prefixes = each.value["subnet_address_prefixes"]

  route_table_name = var.route_table_name
  network_security_group_name = var.network_security_group_name

  # subnet_delegation = {
  #   app-service-plan = [
  #     {
  #       name    = "Microsoft.Web/serverFarms"
  #       actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
  #     }
  #   ]
  # }

  subnet_snet_webout_name = var.subnet_snet_webout_name
  snet_webout_address_prefixes = var.snet_webout_address_prefixes
  subnet_snet_shared_name = var.subnet_snet_shared_name
  subnet_snet_shared_address_prefixes = var.subnet_snet_shared_address_prefixes
  subnet_snet_webin_name = var.subnet_snet_webin_name
  subnet_snet_webin_address_prefixes = var.subnet_snet_webin_address_prefixes
  subnet_snet_apim_name = var.subnet_snet_apim_name
  subnet_snet_apim_address_prefixes = var.subnet_snet_apim_address_prefixes
}