output "web_app_url" {
  value       = "https://${azurerm_linux_web_app.app.default_hostname}"
  description = "URL pública de la Web App"
}

output "web_app_name" {
  value       = azurerm_linux_web_app.app.name
  description = "Nombre de la Web App"
}

output "service_plan_id" {
  value       = azurerm_service_plan.plan.id
  description = "ID del App Service Plan"
}

output "web_app_id" {
  value       = azurerm_linux_web_app.app.id
  description = "ID de la Web App"
}