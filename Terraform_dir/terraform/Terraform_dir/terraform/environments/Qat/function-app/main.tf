data "azurerm_subnet" "func_pep_subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name

}
# Defined Creation Of Function-App

resource "azurerm_function_app" "functionapp" {
  #count                          = var.create_functionapp == true ? 1 : 0
  name                       = var.functionapp_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = var.app_service_plan_id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY"        = var.APPINSIGHTS_INSTRUMENTATIONKEY_name
    "APPLICATIONINSIGHTS_CONNECTION_STRING" = var.APPLICATIONINSIGHTS_CONNECTION_STRING_name

  }

}

# Creating FunctionApp-private-endpoint

resource "azurerm_private_endpoint" "funcapp-pep-connection" {
  name                = var.func_pep_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = data.azurerm_subnet.func_pep_subnet.id

  private_service_connection {
    name                           = "${var.func_pep_name}-connection"
    private_connection_resource_id = azurerm_function_app.functionapp.id
    is_manual_connection           = false
    subresource_names              = ["sites"]
  }
  depends_on = [azurerm_function_app.functionapp]
  #depends_on                       = [data.azurerm_storage_account.storageacc2]

}


/*
resource "azurerm_private_endpoint" "storage_blob" {
  #count              = var.create_functapp_connection == true ? 1 : 0
  name                = var.storageblob_pep_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = data.azurerm_subnet.func_pep_subnet.id

  private_service_connection {
    name                           = "${var.storageblob_pep_name}-connection"
    private_connection_resource_id = data.azurerm_storage_account.storageacc2.id
    is_manual_connection           = false
    subresource_names              = ["blob"]
  }
  depends_on                        = [data.azurerm_storage_account.storageacc2]
}

resource "azurerm_private_endpoint" "storage_table_pep" {
	  count               = var.create_functapp_connection == true ? 1 : 0
	  name                = var.storagetable_pep_name
	  location            = var.location
	  resource_group_name = var.resource_group_name
	  subnet_id           = data.azurerm_subnet.func_pep_subnet.id

	  private_service_connection {
		name                           = "${var.private_service_name}-connection"
		private_connection_resource_id = data.azurerm_storage_account.storageacc2.id
		is_manual_connection           = false
		subresource_names              = ["table"]
	}
  depends_on                        = [data.azurerm_storage_account.storageacc2]
}


resource "azurerm_private_endpoint" "pep_storage_file" {
  #count               = var.create_functapp_connection == true ? 1 : 0
  name                = var.pep_storage_share_file_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = data.azurerm_subnet.func_pep_subnet.id

  private_service_connection {
    name                           = "${var.pep_storage_share_file_name}-connection"
    private_connection_resource_id = data.azurerm_storage_account.storageacc2.id
    is_manual_connection           = false
    subresource_names              = ["file"]
  }
  depends_on                        = [data.azurerm_storage_account.storageacc2]
}
*/
