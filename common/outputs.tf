output "log_name" {
  value       = azurerm_log_analytics_workspace.workspace.name
  description = "The constructed log analytics workspace's name"
}

output "recovery_name" {
  value       = azurerm_recovery_services_vault.vault.name
  description = "The created recovery services vault's name"
}

output "storage_account_name" {
  value       = azurerm_storage_account.storage_account.name
  description = "The generated storage account's name"
}

output "storage_endpoint" {
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
  description = "The generated storage account's main blob endpoint"
}


