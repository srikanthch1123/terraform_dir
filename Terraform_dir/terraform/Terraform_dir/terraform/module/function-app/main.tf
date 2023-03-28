data "azurerm_resource_group" "storageds" {
  name     = var.resource_group_name
  # location = var.location
}

data "azurerm_resource_group" "appds" {
  name     = var.resource_group_name_app
  # location = var.location
}

data "azurerm_storage_account" "storageds" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.storageds.name
  # location                 = var.location
  # account_tier             = "Standard"
  # account_replication_type = "GRS"
}

data "azurerm_service_plan" "functionplan" {
  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.appds.name
  # location            = azurerm_resource_group.example.location
  # os_type             = "Windows"
  # sku_name            = "Y1"
}

resource "azurerm_windows_function_app" "example" {
  name                = var.function_app_name
  resource_group_name = data.azurerm_resource_group.appds.name
  location            = data.azurerm_resource_group.appds.location

  storage_account_name       = data.azurerm_storage_account.storageds.name
  # storage_account_access_key = data.azurerm_storage_account.storageds.name.primary_access_key
  service_plan_id            = data.azurerm_service_plan.functionplan.id

  site_config {}
}