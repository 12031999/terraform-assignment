output "virtualmachine_hostname" {
  value = join("", [for profile in azurerm_virtual_machine.vm.os_profile : profile.computer_name])
}


output "domain_name" {
  value       = azurerm_public_ip.pip.domain_name_label
  description = "the URL of the newly constructed Windows VM"
}

output "private_ip" {
  value       = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
  description = "The generated Windows VM's private IP address"
}

output "public_ip" {
  value       = azurerm_public_ip.pip.ip_address
  description = "The Windows virtual machine's established public IP address"
}

