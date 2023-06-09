
module "app-service" {
  source                                     = "../../../module/app-service" # Getting Path of Appservice Module
  # for_each                                   = var.appservice_list
  # appservice_name                            = each.value["appservice_name"]
  # app_service_plan_name                      = each.value["app_service_plan_name"]
  appservice_dgv_webapp_name   = var.appservice_dgv_webapp_name
  app_service_plan_name        = "plan-1987010878"
  resource_group_name_app      = var.resource_group_name_app
  location                     = var.location
  sku_name                     = var.sku_name
  # service_plan_id = azurerm_service_plan.app.id
#   private_endpoint_dgv_name = var.private_endpoint_dgv_name
#   private_connection_dgv_name = var.private_connection_dgv_name
#   dns_zone_dgv_name = var.dns_zone_dgv_name
#   dns_zone_virtual_network_link_dgv_name = var.dns_zone_virtual_network_link_dgv_name
#   virtual_network_name = var.virtual_network_name
#   resource_group_name_network = var.resource_group_name_network
#   subnet_snet_webin_name = var.subnet_snet_webin_name
#   network_interface_dgv_name = var.network_interface_dgv_name
#   subnet_snet_webout_name = var.subnet_snet_webout_name
  appservice_api_webapp_name = var.appservice_api_webapp_name
#   private_endpoint_api_name = var.private_endpoint_api_name
#   private_connection_api_name = var.private_connection_api_name
#   dns_zone_api_name = var.dns_zone_api_name
#   dns_zone_virtual_network_link_api_name = var.dns_zone_virtual_network_link_api_name
#   network_interface_api_name = var.network_interface_api_name
  appservice_fcsd_webapp_name = var.appservice_fcsd_webapp_name
#   private_endpoint_fcsd_name = var.private_endpoint_fcsd_name
#   private_connection_fcsd_name = var.private_connection_fcsd_name
#   dns_zone_fcsd_name = var.dns_zone_fcsd_name
#   dns_zone_virtual_network_link_fcsd_name = var.dns_zone_virtual_network_link_fcsd_name
#   network_interface_fcsd_name = var.network_interface_fcsd_name
  appservice_lpa_webapp_name = var.appservice_lpa_webapp_name
#   private_endpoint_lpa_name = var.private_endpoint_lpa_name
#   private_connection_lpa_name = var.private_connection_lpa_name
#   dns_zone_lpa_name = var.dns_zone_lpa_name
#   dns_zone_virtual_network_link_lpa_name = var.dns_zone_virtual_network_link_lpa_name
#   network_interface_lpa_name = var.network_interface_lpa_name
  appservice_mzsa_webapp_name = var.appservice_mzsa_webapp_name
#   private_endpoint_mzsa_name = var.private_endpoint_mzsa_name
#   private_connection_mzsa_name = var.private_connection_mzsa_name
#   dns_zone_mzsa_name = var.dns_zone_mzsa_name
#   dns_zone_virtual_network_link_mzsa_name = var.dns_zone_virtual_network_link_mzsa_name
#   network_interface_mzsa_name = var.network_interface_mzsa_name
  appservice_nwp_webapp_name = var.appservice_nwp_webapp_name
#   private_endpoint_nwp_name = var.private_endpoint_nwp_name
#   private_connection_nwp_name = var.private_connection_nwp_name
#   dns_zone_nwp_name = var.dns_zone_nwp_name
#   dns_zone_virtual_network_link_nwp_name = var.dns_zone_virtual_network_link_nwp_name
#   network_interface_nwp_name = var.network_interface_nwp_name
  appservice_zhrz_webapp_name = var.appservice_zhrz_webapp_name
#   private_endpoint_zhrz_name = var.private_endpoint_zhrz_name
#   private_connection_zhrz_name = var.private_connection_zhrz_name
#   dns_zone_zhrz_name = var.dns_zone_zhrz_name
#   dns_zone_virtual_network_link_zhrz_name = var.dns_zone_virtual_network_link_zhrz_name
#   network_interface_zhrz_name = var.network_interface_zhrz_name
}
