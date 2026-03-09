variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group principal"
  default     = "myTFResourceGroup"
}

variable "location" {
  type        = string
  description = "Región de Azure donde se despliega la infraestructura"
  default     = "westus2"
}

variable "app_service_plan_name" {
  type        = string
  description = "Nombre del App Service Plan"
  default     = "myTFAppPlan"
}

variable "web_app_name" {
  type        = string
  description = "Nombre único global de la Web App"
  default     = "myTFWebApp-12345"
}