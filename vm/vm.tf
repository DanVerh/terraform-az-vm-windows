resource "azurerm_windows_virtual_machine" "this" {
  name                = var.vmname
  resource_group_name = azurerm_network_interface.this.resource_group_name
  location            = azurerm_network_interface.this.location
  size                = var.vmsize
  computer_name       = var.vmname
  admin_username      = var.username
  admin_password      = var.password
  patch_mode          = "Manual"
  enable_automatic_updates = false
  network_interface_ids = [azurerm_network_interface.this.id]

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.sku
    version   = "latest"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.osdisktype
    disk_size_gb         = var.osdisksize
  }
}

resource "azurerm_managed_disk" "this" {
  name                 = var.datadiskname
  location             = var.location
  resource_group_name  = var.rg
  storage_account_type = var.datadisktype
  create_option        = "Empty"
  disk_size_gb         = var.datadisksize
}

resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.this.id
  virtual_machine_id = azurerm_windows_virtual_machine.this.id
  lun                = "0"
  caching            = "ReadWrite"
}


