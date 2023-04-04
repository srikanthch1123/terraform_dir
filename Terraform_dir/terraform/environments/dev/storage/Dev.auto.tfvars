resource_group_name  = "zgebs-workbench-dev-storage-rg"
location             = "north europe"
storage_account_name = "zgbswbdevstorage1123"

# container_names = {
#     blob_container_1 = {
#         "container_name"          = "zgebs-wb-dev-dgv-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_2 = {
#         "container_name"          = "zgebs-wb-dev-fscdinv-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_3 = {
#         "container_name"          = "zgebs-wb-dev-fcsdbp-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_4 = {
#         "container_name"          = "zgebs-wb-dev-myz-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
#     blob_container_5 = {
#         "container_name"          = "zgebs-wb-dev-rwb-publicftpblob0198"
#         "storage_account_name"     = "zgbswbdevstorage1123"
#     }
# }

virtual_network_name = "workbench-dev-neu-vnet"

subnet_snet_shared_ds_name = "zgebs-wb-dev-snet-shared-ne01"

resource_group_name_network = "zgebs-workbench-dev-neu-vnet-rg"

private_endpoint_storage_name = "zgebs-wb-dev-shrdstg-pr-198"

storage_dns_zone_vnet_link_name = "dns-zone-vnet-link-name"

storage_dns_a_record_name = "dns-a-record-002"

storage_private_service_connection = "service-connection-stg-001"