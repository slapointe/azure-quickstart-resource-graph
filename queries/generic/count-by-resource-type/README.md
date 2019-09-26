# Count of resource by type

## Description
This query will return the count of resource type by type and subscription.

## Sample output
```
[
  {
    "count": 14,
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "type": "microsoft.storage/storageaccounts"
  },
  {
    "count": 8,
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "type": "microsoft.insights/components"
  },
  {
    "count": 1,
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "type": "microsoft.web/serverfarms"
  },
  {
    "count": 12,
    "subscriptionId": "00000000-0000-0000-0000-F00000000000",
    "type": "microsoft.web/sites"
  }
]
```