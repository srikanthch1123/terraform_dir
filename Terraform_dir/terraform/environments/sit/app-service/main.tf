
module "app-service" {
  source                                     = "../../../module/app-service" # Getting Path of Appservice Module
  for_each                                   = var.appservice_list
  appservice_name                            = each.value["appservice_name"]
  app_service_plan_name                      = each.value["app_service_plan_name"]
  # appservice_name                            = "appservicename1987010798"
  # app_service_plan_name                      = "plan-1987010878"
  resource_group_name_app                      = var.resource_group_name_app
  location                                   = var.location
  sku_name = var.sku_name
  # service_plan_id = azurerm_service_plan.app.id
}