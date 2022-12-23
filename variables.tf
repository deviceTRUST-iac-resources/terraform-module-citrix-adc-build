#####
# vSphere configuration variables
#####

variable vsphere {
  type = map
  description = ""
  default = {
    server             = "10.10.1.4"
    user               = "administrator@vsphere.local"
    password           = "deviceTRUST!2022"
    datacenter         = "democloud"
    host               = "10.10.1.3"
    datastore          = "VM"
    network            = "vSwitch_Internal_INT"
    timezone            = 020
  }
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