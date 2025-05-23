output "storage_account_id" {
  description = "ID de la cuenta de almacenamiento"
  value       = azurerm_storage_account.cloud.id
}

output "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento"
  value       = azurerm_storage_account.cloud.name
}
