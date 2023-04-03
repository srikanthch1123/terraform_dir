resource_group_name_app = "zgebs-workbench-dev-application-rg"
location            = "north europe"
sku_name            = "P1v2"
appservice_dgv_webapp_name  = "zgebs-wb-dev-dgv-wapp-ne-0598"
app_service_plan_name     = "plan-289123301204"

# appservice_list = {
#     app-service_1 = {
#         "appservice_name"          = "zgebs-wb-dev-fcsd-wapp-ne-0198"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_2 = {
#         "appservice_name"          = "zgebs-wb-dev-nwp-wapp-ne-0299"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_3 = {
#         "appservice_name"          = "zgebs-wb-dev-zhrz-wapp-ne-0398"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_4 = {
#         "appservice_name"          = "zgebs-wb-dev-lpa-wapp-ne-0498"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
#     app-service_5 = {
#         "appservice_name"          = "zgebs-wb-dev-dgv-wapp-ne-0598"
#         "app_service_plan_name"     = "plan-289123301204"
#     }
# }

private_connection_dgv_name = "private-connection-name-dgv"

private_endpoint_dgv_name = "zgebs-wb-dev-dgowapp-pe-ne"

dns_zone_dgv_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_dgv_name = "virtual-net-link-dgv-001"

virtual_network_name = "workbench-dev-neu-vnet"

resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"

subnet_snet_webin_name = "zgebs-wb-dev-snet-webin-ne01"

network_interface_dgv_name = "zegebs-wb-dev-dgowapp-nic-ne-01"

subnet_snet_webout_name = "zgebs-wb-dev-snet-webout-ne01"

appservice_api_webapp_name = "zgebs-wb-dev-api-wapp-ne-0598"

private_endpoint_api_name = "zgebs-wb-dev-apiwapp-pe-ne"

private_connection_api_name = "private-connection-name-api"

dns_zone_api_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_api_name = "virtual-net-link-api-001"

network_interface_api_name = "zegebs-wb-dev-apiwapp-nic-ne-01"


appservice_fcsd_webapp_name = "zgebs-wb-dev-fcsd-wapp-ne-0598"

private_endpoint_fcsd_name = "zgebs-wb-dev-fcsdwapp-pe-ne"

private_connection_fcsd_name = "private-connection-name-fcsd"

dns_zone_fcsd_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_fcsd_name = "virtual-net-link-fcsd-001"

network_interface_fcsd_name = "zegebs-wb-dev-fcsdwapp-nic-ne-01"



appservice_lpa_webapp_name = "zgebs-wb-dev-lpa-wapp-ne-0598"

private_endpoint_lpa_name = "zgebs-wb-dev-lpawapp-pe-ne"

private_connection_lpa_name = "private-connection-name-lpa"

dns_zone_lpa_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_lpa_name = "virtual-net-link-lpa-001"

network_interface_lpa_name = "zegebs-wb-dev-lpawapp-nic-ne-01"


appservice_mzsa_webapp_name = "zgebs-wb-dev-mzsa-wapp-ne-0598"

private_endpoint_mzsa_name = "zgebs-wb-dev-mzsawapp-pe-ne"

private_connection_mzsa_name = "private-connection-name-mzsa"

dns_zone_mzsa_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_mzsa_name = "virtual-net-link-mzsa-001"

network_interface_mzsa_name = "zegebs-wb-dev-mzsawapp-nic-ne-01"


appservice_nwp_webapp_name = "zgebs-wb-dev-nwp-wapp-ne-0598"

private_endpoint_nwp_name = "zgebs-wb-dev-nwpwapp-pe-ne"

private_connection_nwp_name = "private-connection-name-nwp"

dns_zone_nwp_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_nwp_name = "virtual-net-link-nwp-001"

network_interface_nwp_name = "zegebs-wb-dev-nwpwapp-nic-ne-01"


appservice_zhrz_webapp_name = "zgebs-wb-dev-zhrz-wapp-ne-0598"

private_endpoint_zhrz_name = "zgebs-wb-dev-zhrzwapp-pe-ne"

private_connection_zhrz_name = "private-connection-name-zhrz"

dns_zone_zhrz_name = "privatelink.azurewebsites.net"

dns_zone_virtual_network_link_zhrz_name = "virtual-net-link-zhrz-001"

network_interface_zhrz_name = "zegebs-wb-dev-zhrzwapp-nic-ne-01"