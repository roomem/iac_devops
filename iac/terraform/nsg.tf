resource "azurerm_network_security_group" "rome_nsg" {
  resource_group_name = data.azurerm_resource_group.BU-MT_rg.name
  name                = var.nsg_name
  location            = data.azurerm_resource_group.BU-MT_rg.location

// ACL for NSG
security_rule {
  name                       = "ALLOW-AKS-API"
  priority                   = 150
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "6443"
  source_address_prefix      = "0.0.0.0/0" //"IP DELLA MACCHINA" da rendere statico TO DO 
  destination_address_prefix = "*"
}
security_rule {
  name                       = "ALLOW-SSH"
  priority                   = 151
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "22"
  source_address_prefix      = "0.0.0.0/0" //"IP DELLA MACCHINA" da rendere statico TO DO 
  destination_address_prefix = "*"
}

tags = {
    project = var.tag
  }
}