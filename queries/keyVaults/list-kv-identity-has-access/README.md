# List all Key Vaults with a specific AAD ObjectId in the access policy

## Description
This query will return the resource and resource group names of key vaults that have a particular AAD identity objectId in their access policy.

## Sample output
```
[
  {
    "name": "keyVaul1",
    "resourceGroup": "app1",
    "subscriptionId": "00000000-0000-0000-0000-000000000000"
  },
  {
    "name": "keyVaul-eastus",
    "resourceGroup": "app4",
    "subscriptionId": "00000000-0000-0000-0000-000000000000"
  }
]
```