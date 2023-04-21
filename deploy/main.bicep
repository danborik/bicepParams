param location string

param namePrefix string

param resourceTypeNameSuffix object

@allowed([
  'Standard_LRS'
  'Premium_LRS'
])
param storageSku string

@allowed([
  'BlobStorage'
  'StorageV2'
])
param storageKind string

param tags object


resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  location: location
  name: '${namePrefix}testparams${resourceTypeNameSuffix.storage}'
  sku: {
    name: storageSku
  }
  kind: storageKind
  tags: tags
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: true
  }
}
