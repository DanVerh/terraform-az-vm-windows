provider "azurerm" {
  features {}
}

module "vm" {
  source = "./vm"

  #Commom variables
  location = "" #https://azuretracks.com/2021/04/current-azure-region-names-reference/
  rg = "" 
  
  #Variable for NIC
  subnetid = "" #check in the JSON view of VNet that example VM is in

  #Variable for VM
  vmname = "vm name"
  vmsize = "size" #name from azure with underscore in place of spaces
  sku = "sku" #https://gmusumeci.medium.com/how-to-find-azure-windows-vm-images-for-terraform-or-packer-deployments-f3edaeb42466
  username = "admin username"
  password = "admin password"
  osdisktype = "Standard_LRS/StandardSSD_LRS/Premium_LRS/UltraSSD_LRS"
  osdisksize = "os disk size"
  datadiskname = "disk name"
  datadisktype = "Standard_LRS/StandardSSD_LRS/Premium_LRS/UltraSSD_LRS"
  datadisksize = "disk size"
}