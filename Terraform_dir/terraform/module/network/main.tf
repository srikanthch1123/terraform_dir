resource "azurerm_resource_group" "network" {
  name     = var.resource_group_name_network
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_subnet" "snet1" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes

  # dynamic "delegation" {
  #   for_each = var.subnet_name == "zgebs-wb-dev-snet-webout-ne01" ? 1 : 0
  #   name = "delegation"

  #   dynamic "service_delegation" {
  #     name    = "Microsoft.Web/serverFarms"
  #     # actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
  #   }
  # }
}