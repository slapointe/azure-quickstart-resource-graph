# List all App Service certificates that expires within 90 days

## Description
This query will return a list of App Services certificates that are already expired or will expires in the next 90 days.

## Sample output
```
[
  {
    "expirationDate": "2019-11-09T16:49:12.0000000Z",
    "friendlyName": "",
    "location": "eastus",
    "name": "A13BD5BC545E9CAA5A8DEF1E49595AA1D9971F3A-project1-uat-EastUSwebspace",
    "resourceGroup": "project1-uat",
    "subjectName": "ops.clientassertion.uat",
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "thumbprint": "A13BD5BC545E9CAA5A8DEF1E49595AA1D9971F3A"
  }
]
```
