resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"
location = "north europe"
virtual_network_name = "workbench-dev-neu-vnet"
vnet_address_space = ["10.0.0.0/16"]
# subnet_name = "Workbench-dev-neu-vnet-sn1"
# subnet_address_prefixes = ["10.0.1.0/24"]

subnet_list = {
  subnet_1 = {
    "subnet_name"          = "zgebs-wb-dey-snet-apim-ne01"
    "subnet_address_prefixes"     = ["10.0.0.0/24"]
    "route_table_name"     = "workbench-dev-neu-vnet-rt1"
  }
  subnet_2 = {
    "subnet_name"          = "zgebs-wb-dev-snet-shared-ne01"
    "subnet_address_prefixes"     = ["10.0.2.0/24"]
    "route_table_name"     = "workbench-dev-neu-vnet-rt1"
  }
  subnet_3 = {
    "subnet_name"          = "zgebs-wb-dev-snet-webout-ne01"
    "subnet_address_prefixes"     = ["10.0.3.0/24"]
    "route_table_name"     = "workbench-dev-neu-vnet-rt1"
  }
  subnet_4 = {
    "subnet_name"          = "zgebs-wb-dev-snet-webin-ne01"
    "subnet_address_prefixes"     = ["10.0.4.0/24"]
    "route_table_name"     = "workbench-dev-neu-vnet-rt1"
  }
}

route_table_name = "workbench-dev-neu-vnet-rt1"

network_security_group_name = "workbench-dev-neu-vnet-nsg1"