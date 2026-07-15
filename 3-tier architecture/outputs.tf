output "aks_fqdn" {
  value = azurerm_kubernetes_cluster.main.fqdn
}
output "acr_login_server" {
  value = azurerm_container_registry.main.login_server
}
output "sql_connection_string" {
  value = azurerm_sql_database.main.connection_string
  sensitive = true
}
