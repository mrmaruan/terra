output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "web_app_url" {
  value = module.webapp.web_app_url
}

output "web_app_name" {
  value = module.webapp.web_app_name
}

output "log_analytics_workspace_id" {
  value = module.monitoring.log_analytics_workspace_id
}