module "keyvault" {
  source = "../../../module/keyvault"
  resource_group_name_kv = var.resource_group_name_kv
  location = var.location
  key_vault_name = var.key_vault_name
  virtual_network_name = var.virtual_network_name
  resource_group_name_network = var.resource_group_name_network
  subnet_snet_shared_ds_name = var.subnet_snet_shared_ds_name
  kv_endpoint_name = var.kv_endpoint_name
  kv_private_service_connection = var.kv_private_service_connection
  kv_dns_a_record_name = var.kv_dns_a_record_name
}