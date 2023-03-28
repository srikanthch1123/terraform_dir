resource_group_name_app = "zgebs-workbench-dev-application-rg"
location            = "north europe"
sku_name            = "P1v2"

appservice_list = {
    app-service_1 = {
        "appservice_name"          = "zgebs-wb-dev-fcsd-wapp-ne-0198"
        "app_service_plan_name"     = "plan-289123301204"
    }
    app-service_2 = {
        "appservice_name"          = "zgebs-wb-dev-nwp-wapp-ne-0299"
        "app_service_plan_name"     = "plan-289123301204"
    }
    app-service_3 = {
        "appservice_name"          = "zgebs-wb-dev-zhrz-wapp-ne-0398"
        "app_service_plan_name"     = "plan-289123301204"
    }
    app-service_4 = {
        "appservice_name"          = "zgebs-wb-dev-lpa-wapp-ne-0498"
        "app_service_plan_name"     = "plan-289123301204"
    }
    app-service_5 = {
        "appservice_name"          = "zgebs-wb-dev-dgv-wapp-ne-0598"
        "app_service_plan_name"     = "plan-289123301204"
    }
}

