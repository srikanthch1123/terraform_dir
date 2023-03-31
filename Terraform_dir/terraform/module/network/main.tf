data "azurerm_resource_group" "networkds" {
  name     = var.resource_group_name_network
}

data "azurerm_virtual_network" "vnetds" {
  name                = var.virtual_network_name
  resource_group_name = data.azurerm_resource_group.networkds.name
}

resource "azurerm_subnet" "snet1" {
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_resource_group.networkds.name
  virtual_network_name = data.azurerm_virtual_network.vnetds.name
  address_prefixes     = var.subnet_address_prefixes
  # service_endpoints = var.service_endpoints
  # dynamic "delegation" {
  #   for_each = var.subnet_name == "zgebs-wb-dev-snet-webout-ne01" ? 1 : 0
  #   name = "delegation"

  #   dynamic "service_delegation" {
  #     name    = "Microsoft.Web/serverFarms"
  #     # actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
  #   }
  # }
}

resource "azurerm_route_table" "rt" {
  name                = var.route_table_name
  location            = data.azurerm_resource_group.networkds.location
  resource_group_name = data.azurerm_resource_group.networkds.name

  route {
    name                   = "example"
    address_prefix         = "10.100.0.0/14"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.1"
  }
}

resource "azurerm_subnet_route_table_association" "srt" {
  subnet_id      = azurerm_subnet.snet1.id
  route_table_id = azurerm_route_table.rt.id
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.network_security_group_name
  location            = data.azurerm_resource_group.networkds.location
  resource_group_name = data.azurerm_resource_group.networkds.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "snsg" {
  subnet_id                 = azurerm_subnet.snet1.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
