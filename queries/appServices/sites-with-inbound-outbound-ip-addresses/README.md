# List all App Service sites including inbound and outbound IP addresses

## Description
This query will return a list of App Services sites, including the inbound and outbound IP addresses information.

## Sample output
```
[
  {
    "inboundIpAddress": "54.212.27.213",
    "name": "poc-dev2-as-facade-yabkdmkzeals4",
    "outboundIpAddresses": [
      "54.212.27.213",
      "54.212.20.147",
      "54.212.23.245",
      "54.212.16.51",
      "54.212.17.233"
    ],
    "resourceGroup": "poc-dev2-canadaeast",
    "subscriptionId": "00000000-0000-0000-0000-000000000000"
  }
]
```
