data "azurerm_key_vault" "key_vault" {
    name = "keysecret02"
    resource_group_name = "bappa_state_rg"
}

data "azurerm_key_vault_secret" "admin_username" {
    name = "keyuser"
    key_vault_id = data.azurerm_key_vault.key_vault.id
}

data "azurerm_key_vault_secret" "admin_password" {
    name = "keypassword"
    key_vault_id = data.azurerm_key_vault.key_vault.id
}

data "azurerm_subnet" "subnet" {
    depends_on = [ module.subnet ]
    name = var.subnet_name
    virtual_network_name = var.vnet_name
    resource_group_name = var.resource_name
}

data "azurerm_public_ip" "public_ip" {
    depends_on = [ module.public_ip ]
    name = var.public_ip_name
    resource_group_name = var.resource_name
}

