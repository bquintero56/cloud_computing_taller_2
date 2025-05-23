resource "azurerm_monitor_metric_alert" "cpu_alert_vm" {
  name                = "high-cpu-vm1"
  resource_group_name = var.resource_group_name
  scopes              = [var.vm_id]
  description         = "Alerta cuando el CPU de VM1 supera el ${var.cpu_threshold}%"
  severity            = 3
  frequency           = "PT1M"
  window_size         = "PT5M"

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.cpu_threshold
  }

  action {
    action_group_id = azurerm_monitor_action_group.email_alert_group.id
  }
}
