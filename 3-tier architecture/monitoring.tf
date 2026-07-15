resource "azurerm_log_analytics_workspace" "main" {
  name                = "${var.prefix}-la"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
resource "azurerm_monitor_diagnostic_setting" "aks" {
  name                       = "${var.prefix}-aks-ds"
  target_resource_id         = azurerm_kubernetes_cluster.main.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id
  log {
    category = "containerinsights"
    enabled  = true
  }
}
