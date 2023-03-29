module "keyvault" {
  source = "../../../module/keyvault"
  resource_group_name_kv = var.resource_group_name_kv
  location = var.location
  key_vault_name = var.key_vault_name
}