variable "resource_group_name" {
  type        = string
  description = "Where the data disks should be formed in the resource group"
}

variable "location" {
  type        = string
  description = "The Azure area where data disk are to be created"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate original resource names."
}

variable "virtualmachine_ids" {
  type        = list(string)
  description = "List of VM IDs to which data disks should be attached"
}

