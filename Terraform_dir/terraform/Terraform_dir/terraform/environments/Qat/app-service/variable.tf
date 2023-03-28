variable "resource_group_name" {}

variable "location" {}

variable "appservice_name" {}

variable "app_service_plan_name" {}

variable "application_insights_name" {
  type = string
}

variable "vnet_name" {}

variable "pp_endpoint_name" {}

variable "subnet_name" {}

variable "APPINSIGHTS_INSTRUMENTATIONKEY_name" {}

variable "APPLICATIONINSIGHTS_CONNECTION_STRING_name" {}

variable "app_service_plan_id" {}
