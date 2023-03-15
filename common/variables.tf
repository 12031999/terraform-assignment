variable "resource_group_name" {
  type        = string
  description = "Where resources should be created, according to the resource group"
}

variable "location" {
  type        = string
  description = "The area in Azure where the resources ought to be produced"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate original resource names"
}

variable "tags" {
  type        = map(string)
  description = "Tags that should be used on the resources"
}

