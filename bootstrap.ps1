$RESOURCE_GROUP = "tfstate-rg"
$STORAGE_ACCOUNT = "tfstatewolter"
$CONTAINER = "tfstate"
$LOCATION = "westus2"

Write-Host "Creando resource group para tfstate..."
az group create --name $RESOURCE_GROUP --location $LOCATION

Write-Host "Creando storage account..."
az storage account create `
  --name $STORAGE_ACCOUNT `
  --resource-group $RESOURCE_GROUP `
  --location $LOCATION `
  --sku Standard_LRS

Write-Host "Creando container..."
az storage container create `
  --name $CONTAINER `
  --account-name $STORAGE_ACCOUNT

Write-Host "Bootstrap completado."