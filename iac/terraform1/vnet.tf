data "azurerm_resource_group" "BU-MT_rg" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "rome_vnet_1" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.default_location
  resource_group_name = var.resource_group_name

  subnet {
    name           = "subnet_A"
    address_prefix = var.subnet_prefixes[0]
  }

  subnet {
    name           = "subnet_B"
    address_prefix = var.subnet_prefixes[1]
  }
}



