@description('The location for all resources')
param location string = 'uksouth'

@description('The name of the Azure Speech service')
param speechServiceName string = 'dp-AI-speech'

@description('The pricing tier for Azure Speech')
param skuName string = 'F0'

@description('Enable System-assigned Managed Identity')
param enableManagedIdentity bool = true

resource speechService 'Microsoft.CognitiveServices/accounts@2023-05-01' = {
  name: speechServiceName
  location: location
  kind: 'Speech'
  sku: {
    name: skuName
  }
  properties: {
    publicNetworkAccess: 'Enabled'
  }
  identity: enableManagedIdentity ? {
    type: 'SystemAssigned'
  } : null
}

output speechServiceId string = speechService.id
