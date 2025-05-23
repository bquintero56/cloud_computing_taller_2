resource "azurerm_monitor_activity_log_alert" "storage_deletion_alert" {
  name                = "StorageAccountDeletionAlert"
  resource_group_name = var.resource_group_name
  location            = "global"
  scopes              = [var.storage_account_id]
  description         = "Alerta cuando se elimine una cuenta de almacenamiento"
  enabled             = true

  criteria {
    category       = "Administrative"
    operation_name = "Microsoft.Storage/storageAccounts/delete"
    level          = "Informational"
    resource_id    = var.storage_account_id
  }

  action {
    action_group_id = azurerm_monitor_action_group.email_alert_group.id
  }
}
