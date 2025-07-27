resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm_name
  resource_group_name             = var.resource_name
  location                        = var.location_name
  size                            = var.size
  admin_username                  = var.admin_username
  network_interface_ids           = [azurerm_network_interface.nic.id]
  disable_password_authentication = false
  admin_password                  = var.admin_password


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = "osdisk"
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }

#   connection {
#     type     = "ssh"
#     user     = var.admin_username
#     password = var.admin_password
#     host     = var.public_ip_address
#   }

  # provisioner "remote_exec" {
  #   inline = [
  #     "sudo apt-get update",
  #     "sudo apt-get install -y nginx",
  #     "sudo systemctl enable nginx",
  #     "sudo systemctl start nginx"
  #   ]
  # }

 }

