# List all resources where a specific tag is missing

## Description
This query will return all resources where a specific tag is not present.

## Sample output
```
[
 {
    "name": "poc-dev-vsts",
    "resourceGroup": "dev-infra",
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "subscriptionName": "poc-dev",
    "tags": ""
  },
  {
    "name": "poc-prod-vsts",
    "resourceGroup": "prod-infra",
    "subscriptionId": "10000000-0000-0000-0000-000000000000",
    "subscriptionName": "poc-prod",
    ""tags": {
      "costCenter": "teamA",
      "owner": "user1@domain.com"
    }
  }
]
```