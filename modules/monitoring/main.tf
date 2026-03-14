resource "azurerm_log_analytics_workspace" "logs" {
  name                = var.log_analytics_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "appinsights" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.logs.id
  application_type    = "web"
}

resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "alert-high-cpu"
  resource_group_name = var.resource_group_name
  scopes              = [var.service_plan_id]
  description         = "Alerta cuando CPU supera el 80%"
  severity            = 2

  criteria {
    metric_namespace = "Microsoft.Web/serverfarms"
    metric_name      = "CpuPercentage"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  window_size = "PT5M"
  frequency   = "PT1M"
}

resource "azurerm_monitor_metric_alert" "availability_alert" {
  name                = "alert-low-availability"
  resource_group_name = var.resource_group_name
  scopes              = [var.web_app_id]
  description         = "Alerta cuando la app no responde"
  severity            = 1

  criteria {
    metric_namespace = "Microsoft.Web/sites"
    metric_name      = "Http5xx"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 5
  }

  window_size = "PT5M"
  frequency   = "PT1M"
}