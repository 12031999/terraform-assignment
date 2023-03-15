output "postgresql_name" {
  value       = azurerm_postgresql_server.postgresql_server.name
  description = "The generated PostgreSQL instance's name"
}

