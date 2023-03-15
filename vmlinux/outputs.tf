output "virtualmachine_hostnames" {
 value = [for i in range(var.vm_count) : azurerm_virtual_machine.vm[i].name]
}


output "domain_name" {
  value = [for pip in azurerm_public_ip.pip : pip.domain_name_label]
  description = "The domain names of generated VMs"
}

output "private_ip" {
  value = [for nic in azurerm_network_interface.nic : nic.ip_configuration[0].private_ip_address]
  description = "The private IP addresses of generated VMs"
}

output "public_ip" {
  value = [for pip in azurerm_public_ip.pip : pip.ip_address]
  description = "The public IP addresses of generated VMs"
}

output "virtualmachine_ids" {
  value = [for vm in azurerm_virtual_machine.vm : vm.id]
}

output "virtualmachine_nic_ids" {
  value = [for nic in azurerm_network_interface.nic : nic.id ]
 
}


output "public_ip_address_ids" {
  value       = azurerm_public_ip.pip[*].id
  description = "The IDs assigned to the Linux virtual machines' public IP addresses"
}


