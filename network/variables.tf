variable "resource_group_name" {
  type        = string
  description = "Where to construct the virtual network and subnet in the resource group"
}

variable "location" {
  type        = string
  description = "The Azure region where the virtual network and subnet should be created"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate distinctive resource names."
}

variable "tags" {
  type        = map(string)
  description = "tags must be applied to the subnet and virtual network"
}

