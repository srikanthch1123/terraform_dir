resource_group_name  = "zgebs-workbench-dev-storage-rg"
location             = "north europe"
storage_account_name = "zgbswbdevstorage1123"

container_names = {
    blob_container_1 = {
        "container_name"          = "zgebs-wb-dev-dgv-publicftpblob0198"
        "storage_account_name"     = "zgbswbdevstorage1123"
    }
    blob_container_2 = {
        "container_name"          = "zgebs-wb-dev-fscdinv-publicftpblob0198"
        "storage_account_name"     = "zgbswbdevstorage1123"
    }
    blob_container_3 = {
        "container_name"          = "zgebs-wb-dev-fcsdbp-publicftpblob0198"
        "storage_account_name"     = "zgbswbdevstorage1123"
    }
    blob_container_4 = {
        "container_name"          = "zgebs-wb-dev-myz-publicftpblob0198"
        "storage_account_name"     = "zgbswbdevstorage1123"
    }
    blob_container_5 = {
        "container_name"          = "zgebs-wb-dev-rwb-publicftpblob0198"
        "storage_account_name"     = "zgbswbdevstorage1123"
    }
}
