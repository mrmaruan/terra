output "log_analytics_workspace_id" {
  value       = azurerm_log_analytics_workspace.logs.id
  description = "ID del Log Analytics Workspace"
}

output "app_insights_connection_string" {
  value       = azurerm_application_insights.appinsights.connection_string
  description = "Connection string de Application Insights"
  sensitive   = true
}