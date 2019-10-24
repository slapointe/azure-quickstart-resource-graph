# List all resources and resource groups with an expired 'expiresOn' tag

## Description
This query will return all resources & resource groups where a specific tag (i.e.: expiresOn) is present and it's value is expired. Recommended to use dates in ISO 8601 format in tag value.

More info about supported datetime formats here: https://docs.microsoft.com/en-us/azure/kusto/query/scalar-data-types/datetime

## Sample output
```
[
 {
    "expiresOn": "2019-09-20T00:00:00Z",
    "name": "poc-dev-vsts",
    "type": "microsoft.resources/subscriptions/resourcegroups"
  },
  {
    "expiresOn": "2019-09-20T00:00:00Z",
    "name": "poc0prod0storage",
    "type": "microsoft.storage/storageAccounts"
  }
]
```

## Note: This query is longer to execute since find() function support is not there yet we we union all without criteria at source.