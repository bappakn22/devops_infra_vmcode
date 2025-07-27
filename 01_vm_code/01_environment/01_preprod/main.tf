module "resource_group" {
  source        = "../../02_module/01_azurerm_resource_group"
  resource_name = var.resource_name
  location_name = var.location_name
}

module "vnet" {
  depends_on    = [module.resource_group]
  source        = "../../02_module/02_azurerm_vnet"
  vnet_name     = var.vnet_name
  location_name = var.location_name
  resource_name = var.resource_name
  address_space = ["10.0.0.0/16"]
}

module "subnet" {
  depends_on           = [module.vnet]
  source               = "../../02_module/03_azurerm_subnet"
  subnet_name          = var.subnet_name
  resource_name        = var.resource_name
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.1.0/24"]
}

module "public_ip" {
  depends_on        = [module.resource_group]
  source            = "../../02_module/04_azurerm_public_ip"
  public_ip_name    = var.public_ip_name
  resource_name     = var.resource_name
  location_name     = var.location_name
  allocation_method = var.allocation_method
}

module "vm_nic" {
  depends_on           = [module.subnet, module.public_ip, ]
  source               = "../../02_module/05_azurerm_virtual_machine"
  nic_name             = var.nic_name
  subnet_id            = data.azurerm_subnet.subnet.id
  public_ip_address_id = data.azurerm_public_ip.public_ip.id
  resource_name        = var.resource_name
  location_name        = var.location_name
  vm_name              = var.vm_name
  size                 = var.size
  admin_username       = data.azurerm_key_vault_secret.admin_username.value
  admin_password       = data.azurerm_key_vault_secret.admin_password.value
  nsg_name             = var.nsg_name
  # public_ip_address    = data.azurerm_public_ip.public_ip.ip_address

}
