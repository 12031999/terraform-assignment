variable "resource_group_name" {
  type        = string
  description = "where the VM should be established in the resource group"
}

variable "location" {
  type        = string
  description = "Azure region in which to create the VM"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate distinctive resource names."
}

variable "subnet_id" {
  type        = string
  description = "ID for the VM's subnet"
}

variable "storage_account_primary_blob_endpoint" {
  type        = string
  description = "the storage account's main blob endpoint for boot diagnostics"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the VM"
}

