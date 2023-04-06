module "apim" {
  source = "../../../module/apim"
  resource_group_name_apim = var.resource_group_name_apim
  location = var.location
  apim_name = var.apim_name
  company_name = var.company_name
  publisher_email = var.publisher_email
  sku_name_apim = var.sku_name_apim
#   virtual_network_name = var.virtual_network_name
#   resource_group_name_network = var.resource_group_name_network
#   subnet_snet_apim_ds_name = var.subnet_snet_apim_ds_name
#   private_endpoint_apim_name = var.private_endpoint_apim_name
#   apim_dns_zone_vnet_link_name = var.apim_dns_zone_vnet_link_name
#   apim_dns_a_record_name = var.apim_dns_a_record_name
#   apim_private_service_connection = var.apim_private_service_connection
}
