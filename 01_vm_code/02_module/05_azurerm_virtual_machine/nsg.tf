resource "azurerm_network_security_group" "nsg_group" {
    name = var.nsg_name
    location = var.location_name
    resource_group_name = var.resource_name
}

resource "azurerm_network_security_rule" "nsg_rule" {
   name                        = "prep-nsg-rule-ssh"
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_name
  network_security_group_name = azurerm_network_security_group.nsg_group.name

}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
    network_interface_id = azurerm_network_interface.nic.id
    network_security_group_id = azurerm_network_security_group.nsg_group.id
}