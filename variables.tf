#####
# vSphere configuration variables
#####

variable "vsphere_server" {
  description   = "vsphere server for the environment"
  type          = string
  default       = "10.10.1.4"
}

variable "vsphere_user" {
  description   = "vSphere Admin Username"
  type          = string
  default       = "administrator@vsphere.local"
}

variable "vsphere_password" {
  description   = "vSphere Admin Password"
  type          = string
  default       = "deviceTRUST!2022"
}

variable "vsphere_datacenter" {
  description   = "vsphere datacenter"
  type          = string
  default       = "democloud"
}

variable "vsphere_datastore" {
  description   = "vsphere datastore to deploy"
  type          = string
  default       = "VM"
}

variable "vsphere_resourcepool" {
  description   = "vsphere resource pool"
  type          = string
  default       = "democloud"
}

#####
# ADC VM configuration variables
#####

variable "vm_network" {
  description   = "vsphere network for deployed vm"
  type          = string
  default       = "vSwitch_Internal_INT"
}

variable "vm_ip" {
  description   = "IP of linux VM"
  type          = string
  default       = "10.10.1.15"
}

variable "vm_gateway" {
  description   = "Gateway of linux VM"
  type          = string
  default       = "10.10.1.1"
}

variable "vm_netmask" {
  description   = "Subnet mask of VM network"
  type          = string
  default       = "255.255.255.0"
}

variable "vm_name" {
  description   = "Name for ADC VM"
  type          = string
  default       = "inf-adc-08"
}

variable "vm_folder" {
  description   = "Folder path to place VM"
  type          = string
  default       = null
}

variable "vm_host" {
  description   = "Host to import OVF"
  type          = string
  default       = "10.10.1.3"
}

variable "vm_ovf" {
  description   = "OVF file to deploy"
  type          = string
  default       = "/home/localadmin/GIT/devicetrust/democloud/terraform/citrix-adc/sources/Image/NSVPX-ESX-13.0-88.14_nc_64.ovf"
}

variable "vm_mac" {
  description   = "Static value of MAC address"
  type          = string
  default       = "00:00:00:aa:bb:cc"
}