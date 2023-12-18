resource "azurerm_container_registry" "rome_acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.BU-MT_rg.name
  location            = data.azurerm_resource_group.BU-MT_rg.location

  sku = "Basic"  
  
  admin_enabled = true
}