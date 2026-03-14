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

variable "key_vault_name" {
  type        = string
  description = "Nombre único global del Key Vault"
  default     = "myTFKeyVault-12345"
}

variable "secret_value" {
  type        = string
  description = "Valor del secreto de ejemplo"
  sensitive   = true
  default     = "mi-secreto-super-seguro"
}

variable "object_id" {
  type        = string
  description = "Object ID del usuario con acceso al Key Vault"
  default     = "9e5007bf-ac56-4176-be89-658650c8beef"
}