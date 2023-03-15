output "name" {
  value       = module.rgroup.name
  description = "The rgroup module created a resource group"
}
output "vnet_name" {
  value       = module.network.vnet_name
  description = "The network module's virtual network"
}

output "subnet_name" {
  value       = module.network.subnet_name
  description = "network module's network -created subnet"
}

output "log_name" {
  value       = module.common.log_name
  description = "Workspace for log analytics produced by the common module"
}

output "recovery_name" {
  value       = module.common.recovery_name
  description = "Vault for recovery services produced by the common module"
}

output "storage_account_name" {
  value       = module.common.storage_account_name
  description = "The common module's storage account"
}
output "vm_linux_details" {
  value = {
    hostnames      = module.vmlinux.virtualmachine_hostnames
    domain_names   = module.vmlinux.domain_name
    private_ips    = module.vmlinux.private_ip
    public_ips     = module.vmlinux.public_ip
  }
  description = "specifics of the Linux virtual machines produced by the vmlinux module"
}
output "vm_windows_details" {
  value = {
    hostname       = module.vmwindows.virtualmachine_hostname
    domain_name    = module.vmwindows.domain_name
    private_ip     = module.vmwindows.private_ip
    public_ip      = module.vmwindows.public_ip
  }
  sensitive = true
  description = "Specifics of the Windows virtual machine that the vmwindows module produced"
}
output "lbname" {
  value       = module.loadbalancer.lbname
  description = "The name of generated load balancer"
}
output "postgresql_name" {
  value       = module.database.postgresql_name
  description = "The name of genereated PostgreSQL instance"
}
