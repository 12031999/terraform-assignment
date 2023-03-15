variable "resource_group_name" {
  type        = string
  description = "Resource group where the load balancer should be created"
}

variable "location" {
  type        = string
  description = "Azure region where the load balancer should be created"
}

variable "id" {
  type        = string
  description = "Humber ID will be used to generate original resource names"
}

variable "linux_virtualmachine_nic_ids" {
  type        = list(string)
  description = "a list of the Linux VMs' NIC IDs that need to be added to the backend pool"
}

variable "public_ip_address_ids" {
  type        = list(string)
  description = "IDs for public IP addresses that the load balancer will employ"
}


