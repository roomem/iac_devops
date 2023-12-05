resource "azurerm_kubernetes_cluster" "rome_AKS" {
    name = var.aks_name
    location = data.azurerm_resource_group.BU-MT_rg.location
    resource_group_name = data.azurerm_resource_group.BU-MT_rg.name

    dns_prefix = var.dns_prefix

    automatic_channel_upgrade = "patch"
    azure_policy_enabled = true
    http_application_routing_enabled = true

    default_node_pool {
        name = "${var.aks_name}_nodepool"
        vm_size = "Standard_D1_v2"
        min_count = 1
        max_count = 8
        enable_auto_scaling = true
    }
    network_profile {
        network_plugin = "azure"
        network_policy = "azure"
    }
    identity {
        type = "SystemAssigned"
    }

    tags = {
        project = var.tag
    }
}
