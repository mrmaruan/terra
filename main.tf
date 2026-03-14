terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatewolter"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    "Environment" = "Dev"
    "Team"        = "DevOps"
    "ManagedBy"   = "Terraform"
  }
}

module "networking" {
  source              = "./modules/networking"
  vnet_name           = "myTFVnet"
  subnet_name         = "Subnet1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

module "webapp" {
  source                = "./modules/webapp"
  app_service_plan_name = var.app_service_plan_name
  web_app_name          = var.web_app_name
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
}

module "monitoring" {
  source              = "./modules/monitoring"
  log_analytics_name  = "myTFLogAnalytics"
  app_insights_name   = "myTFAppInsights"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = module.webapp.service_plan_id
  web_app_id          = module.webapp.web_app_id
}

module "keyvault" {
  source              = "./modules/keyvault"
  key_vault_name      = var.key_vault_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  secret_value        = var.secret_value
  object_id           = var.object_id
}