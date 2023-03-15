variable "resource_group_name" {
  type        = string
  description = "Where to construct the VMs in the resource group"
}

variable "location" {
  type        = string
  description = "Where in Azure should the VMs be created?"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate distinctive resource names."
}

variable "subnet_id" {
  type        = string
  description = "VMs' subnet identification"
}

variable "admin_username" {
  type        = string
}


variable "ssh_key" {
description = "The virtual machines must be updated using the SSH public key"
type = string
}

variable "ssh_private_key" {
description = "The virtual machines must be accessed using the SSH private key"
type = string
}


variable "storage_account_primary_blob_endpoint" {
  type        = string
  description = "the storage account's main blob endpoint for boot diagnostics"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the VMs"
}


variable "vm_count" {
  type    = number
  default = 2
}
