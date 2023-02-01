param location string = deployment().location
param name string
param environment string

targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'rg-${name}-${environment}'
  location: location
}

module storageAccount '../resource-templates/storageAccount.bicep' = {
  name: 'storageAccountDeployment'
  scope: rg

  params: {
    name: 'stg${name}${environment}'
    location: location
  }
}
