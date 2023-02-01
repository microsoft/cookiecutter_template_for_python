param location string = deployment().location
param name string

targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'rg-${name}'
  location: location
}
