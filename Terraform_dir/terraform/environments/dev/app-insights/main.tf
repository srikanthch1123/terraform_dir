module "app-insights" {
  source = "../../../module/app-insights"
  resource_group_name_app = var.resource_group_name_app
  log_analytics_workspace_name = var.log_analytics_workspace_name
  application_insights_name = var.application_insights_name
}