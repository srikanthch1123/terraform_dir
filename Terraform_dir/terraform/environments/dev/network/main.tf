module "network" {
  source = "../../../module/network"
  resource_group_name_network = var.resource_group_name_network
  location = var.location
  virtual_network_name = var.virtual_network_name
  vnet_address_space = var.vnet_address_space
  for_each = var.subnet_list
  subnet_name = each.value["subnet_name"]
  subnet_address_prefixes = each.value["subnet_address_prefixes"]

  # subnet_delegation = {
  #   app-service-plan = [
  #     {
  #       name    = "Microsoft.Web/serverFarms"
  #       actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
  #     }
  #   ]
  # }
}