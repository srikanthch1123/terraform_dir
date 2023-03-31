module "apim" {
  source = "../../../module/apim"
  resource_group_name_apim = var.resource_group_name_apim
  location = var.location
  apim_name = var.apim_name
  company_name = var.company_name
  publisher_email = var.publisher_email
  sku_name_apim = var.sku_name_apim
}
