output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "web_app_url" {
  value       = "https://${azurerm_linux_web_app.app.default_hostname}"
  description = "URL pública de la Web App"
}

output "web_app_name" {
  value       = azurerm_linux_web_app.app.name
  description = "Nombre de la Web App en Azure"
}

output "app_insights_connection_string" {
  value     = azurerm_application_insights.appinsights.connection_string
  sensitive = true
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.logs.id
}