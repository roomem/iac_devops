resource "azurerm_container_registry" "acr" {
  name                = "rome-acr"
  resource_group_name = data.azurerm_resource_group.BU-MT_rg.name
  location            = data.azurerm_resource_group.BU-MT_rg.location

  sku = "Basic"  
  
  admin_enabled = true
}