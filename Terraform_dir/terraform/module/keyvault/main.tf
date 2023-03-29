data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "keyvault" {
  name     = var.resource_group_name_kv
  location = var.location
}

resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.keyvault.location
  resource_group_name         = azurerm_resource_group.keyvault.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  # soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "Create", "Delete", "Encrypt", "Backup", "List", "Recover", "Update",
    ]

    secret_permissions = [
      "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set", 
    ]

    storage_permissions = [
      "Get", "Delete", "Backup", "List", "Update",
    ]
  }
}