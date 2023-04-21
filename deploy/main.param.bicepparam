using 'main.bicep'

param location = 'westeurope'

param namePrefix = 'db'

param resourceTypeNameSuffix = {
  storage : 'st'
  virtualMachine : 'vm'
}

param storageSku = 'Standard_LRS'

param storageKind = 'StorageV2'

param tags = {
  Owner : 'DanBorik'
  Purpose : 'toLearnBicepParamFiles'
}
