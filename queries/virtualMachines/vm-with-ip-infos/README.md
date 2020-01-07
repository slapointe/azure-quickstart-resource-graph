# List all virtual machines with primary nic information

## Description
This query will return all virtual machines with their primary nic private and public IP addresses.

## Sample output
```
[
  {
    "nicId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/project1-vm-dev/providers/Microsoft.Network/networkInterfaces/proj1dev-2007f_nic",
    "privateIpAddress": "172.18.40.5",
    "publicIpAddress": "",
    "publicIpId": "",
    "vmId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/project1-vm-dev/providers/Microsoft.Compute/virtualMachines/proj1dev-2007f",
    "vmName": "proj1dev-2007f",
    "vmSize": "Standard_D2s_v3"
  },
  {
    "nicId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/proj1-dev/providers/Microsoft.Network/networkInterfaces/proj1dev-dc2464",
    "privateIpAddress": "172.18.50.5",
    "publicIpAddress": "40.86.201.107",
    "publicIpId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/proj1-dev/providers/Microsoft.Network/publicIPAddresses/proj1dev-dc2-publicip",
    "vmId": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/proj1-dev/providers/Microsoft.Compute/virtualMachines/proj1dev-dc2",
    "vmName": "proj1dev-dc2",
    "vmSize": "Standard_DS2_v2"
  }
]
```