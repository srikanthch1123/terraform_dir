resource "azurerm_resource_group" "apim" {
  name     = var.resource_group_name_apim
  location = var.location
}

resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = azurerm_resource_group.apim.location
  resource_group_name = azurerm_resource_group.apim.name
  publisher_name      = var.company_name
  publisher_email     = var.publisher_email

  sku_name = var.sku_name_apim
}
