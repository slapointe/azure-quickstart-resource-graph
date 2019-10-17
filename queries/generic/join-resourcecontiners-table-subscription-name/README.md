# Joins the ResourceContainers table to fetch subscription names

## Description
This query will join the ResourceContainers table to include the subscription names to the result set

## Sample output
```
[
  {
    "name": "keyVaul1",
    "resourceGroup": "app1",
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "subscriptionName": "poc-dev",
    "type" : "microsoft.keyvault/vaults"
  },
  {
    "name": "keyVaul-eastus",
    "resourceGroup": "app4",
    "subscriptionId": "10000000-0000-0000-0000-000000000000",
    "subscriptionName": "poc-prod",
    "type" : "microsoft.keyvault/vaults"
  }
]
```
