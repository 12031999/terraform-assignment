variable "id" {
  type        = string
  description = "With the Humber ID, a special resource group name will be created."
}

variable "location" {
  type        = string
  description = "Azure region in which to construct the resource group"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be added to the resource group"
}

