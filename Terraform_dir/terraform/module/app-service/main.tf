

resource "azurerm_resource_group" "app" {
  name = var.resource_group_name_app
  location = var.location
}


resource "azurerm_service_plan" "app" {
  name = var.app_service_plan_name
  location = var.location
  resource_group_name = var.resource_group_name_app
  os_type = "Windows"
  sku_name = var.sku_name

}

# Defined Creation Of Azureapp Service

resource "azurerm_windows_web_app" "appservice" {
  name                = var.appservice_name
  location            = var.location
  resource_group_name = var.resource_group_name_app
  service_plan_id = azurerm_service_plan.app.id

  site_config {}
}

