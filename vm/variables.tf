variable "location" {
  description = "Location"
}

variable "rg" {
  description = "Resource Group"
}

variable "subnetid" {
  description = "Subnet ID"
}

variable "username" {
  description = "Admin Username"
  sensitive   = true
}

variable "password" {
  description = "Admin Password"
  sensitive   = true
}

variable "vmname" {
  description = "Virtual Machine name"
}

variable "sku" {
  description = "SKU"
}

variable "vmsize" {
  description = "Virtual Machine size"
}

variable "osdisktype" {
  description = "OS Disk Type"
}

variable "osdisksize" {
  description = "OS Disk Size"
}

variable "datadisktype" {
  description = "Data Disk Type"
}

variable "datadiskname" {
  description = "Data Disk Name"
}

variable "datadisksize" {
  description = "Data Disk Size"
}