//
// Minimum deployment sample
//

// Use this sample to deploy the minimum resource configuration.

targetScope = 'resourceGroup'

@description('The Azure location to deploy to.')
param location string = resourceGroup().location

@description('Minimum resource configuration')
module minimum_hub_network '../hubNetworking.bicep' = {
  name: 'minimum_hub_network'
  params: {
    parLocation: location
  }
}