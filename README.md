# Azure Infrastructure with Terraform + CI/CD
# Marouane Saidi Rahim
Infraestructura Azure completa desplegada como código con Terraform y automatizada con GitHub Actions.

## Arquitectura

- **Resource Group** — contenedor de todos los recursos
- **Virtual Network** — red privada con subnet
- **App Service Plan + Web App** — aplicación web en Linux (F1 tier)
- **Log Analytics Workspace** — centralización de logs
- **Application Insights** — monitorización de la aplicación
- **Azure Monitor Alerts** — alertas de CPU y disponibilidad
- **Remote State** — tfstate almacenado en Azure Storage

## Pipeline CI/CD

Cada push a `main` dispara automáticamente:

1. `terraform init` — inicializa el backend remoto
2. `terraform plan` — muestra los cambios
3. `terraform apply` — aplica los cambios en Azure

## Cómo replicarlo

1. Clona el repositorio
2. Crea un Service Principal en Azure
3. Configura los secrets en GitHub Actions:
   - `ARM_CLIENT_ID`
   - `ARM_CLIENT_SECRET`
   - `ARM_SUBSCRIPTION_ID`
   - `ARM_TENANT_ID`
4. Crea el Storage Account para el remote state
5. Haz push a `main`

## Coste estimado del lab

| Recurso | Coste mensual |
|---|---|
| App Service F1 | Gratuito |
| Log Analytics (mínimo) | ~2€ |
| Storage Account (state) | <1€ |
| **Total** | **~3€/mes** |

## Stack

Terraform · Azure · GitHub Actions · Azure Monitor