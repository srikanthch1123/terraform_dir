variable "resource_group_name" {}
variable "location" {}
variable "tier" {}
variable "ac_type" {}
variable "size" {}
variable "functionapp_name" {}
variable "create_storage_account" {
  type = bool
}
variable "app_service_plan_id" {}
variable "application_insights_name" {
  type = string
}
variable "storageaccount_name" {}
variable "subnet_name" {}
variable "vnet_name" {}
variable "func_pep_name" {}
variable "app_service_plan_name" {}
variable "container_name" {}
variable "quota" {}
variable "storage_account_name" {}
variable "storage_account_access_key" {}
variable "APPINSIGHTS_INSTRUMENTATIONKEY_name" {}
variable "APPLICATIONINSIGHTS_CONNECTION_STRING_name" {}

#variable "storageblob_name" { }

#variable "storageblob_pep_name" { }

#variable "storage_share_name" { }

#variable "storage_share_file_name" { }

#variable "pep_storage_share_file_name" { }

#variable "storagetable_name" { }

#variable "storagetable_pep_name" { }

#variable "create_functapp_connection" { }

#variable "private_service_name" { }

/*
variable "create_functionapp" {

  type = bool

}
*/
#variable "app_service_planid" {}
