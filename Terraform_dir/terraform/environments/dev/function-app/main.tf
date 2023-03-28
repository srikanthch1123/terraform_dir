module "function-app" {
  source = "../../../module/function-app"
  for_each = var.function_app_list
  function_app_name = each.value["function_app_name"]
  app_service_plan_name = each.value["app_service_plan_name"]
  resource_group_name_app = var.resource_group_name_app
  resource_group_name = var.resource_group_name
  location = var.location
  sku_name = var.sku_name
  storage_account_name = var.storage_account_name
}