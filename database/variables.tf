variable "resource_group_name" {
  type        = string
  description = "Where a PostgreSQL instance should be generated is specified as a resource group."
}

variable "location" {
  type        = string
  description = "Where the PostgreSQL instance should be created in Azure"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate original resource names."
}

