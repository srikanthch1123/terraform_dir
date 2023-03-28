resource_group_name_app = "zgebs-workbench-dev-application-rg"
resource_group_name = "zgebs-workbench-dev-storage-rg"
location            = "north europe"
sku_name            = "P1v2"
storage_account_name = "zgbswbdevstorage1123"

function_app_list = {
    function_app_1 = {
        "function_app_name"          = "zgebs-wb-dev-myz-fapp-ne-0198"
        "app_service_plan_name"     = "plan-289123301204"
    }
    function_app_2 = {
        "function_app_name"          = "zgebs-wb-dev-myz-func0198"
        "app_service_plan_name"     = "plan-289123301204"
    }
    function_app_3 = {
        "function_app_name"          = "zgebs-wb-dev-rwb-fapp-ne-0298"
        "app_service_plan_name"     = "plan-289123301204"
    }
    function_app_4 = {
        "function_app_name"          = "zgebs-wb-dev-myz-func0298"
        "app_service_plan_name"     = "plan-289123301204"
    }
}