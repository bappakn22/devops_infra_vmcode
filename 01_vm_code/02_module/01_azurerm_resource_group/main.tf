resource "azurerm_resource_group" "rg_name" {
    name     = var.resource_name
    location = var.location_name
}
