provider "vsphere" {
  user           = module.variables.var.vsphere.user
  password       = module.variables.var.vsphere.password
  vsphere_server = module.variables.var.vsphere.server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}