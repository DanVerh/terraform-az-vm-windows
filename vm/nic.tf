resource "azurerm_network_interface" "this" {
  name                = "${var.vmname}-nic"
  location            = var.location
  resource_group_name = var.rg

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = var.subnetid
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.this.id
  }
}

