resource "azurerm_network_interface" "nic" {
    name                = var.nic_name
    resource_group_name = var.resource_name
    location            = var.location_name
    
    ip_configuration {
        name                          = "internalnic"
        subnet_id                     = var.subnet_id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = var.public_ip_address_id
    }
}