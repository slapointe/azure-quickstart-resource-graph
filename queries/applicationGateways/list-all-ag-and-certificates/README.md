# List all Application Gateways and their SSL certificates information

## Description
This query will return a list of Application Gateways and their SSL certificates.

## Sample output
```
[
  {
    "name": "poc-nag-default-64mku52k65qdy",
    "resourceGroup": "poc-common-canadaeast",
    "subscriptionId": "00000000-0000-0000-0000-000000000000",
    "sslCertificates": [
      {
        "etag": "W/\"b05ce79a-b5ae-4253-a003-edc4424be963\"",
        "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/poc-common-canadaeast/providers/Microsoft.Network/applicationGateways/poc-common-nag-default-64mku52k65qdy/sslCertificates/Wildcard_share-gate_com",
        "name": "Wildcard_poc_com",
        "properties": {
          "httpListeners": [
            {
              "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/poc-common-canadaeast/providers/Microsoft.Network/applicationGateways/poc-common-nag-default-64mku52k65qdy/httpListeners/Internal-Https",
              "resourceGroup": "poc-common-canadaeast"
            }
          ],
          "provisioningState": "Succeeded",
          "publicCertData": "Base64.certificate.data="
        },
        "resourceGroup": "poc-common-canadaeast",
        "type": "Microsoft.Network/applicationGateways/sslCertificates"
      }
    ]
  }
]
```