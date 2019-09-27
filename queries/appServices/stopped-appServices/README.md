# Retrieve a list of stopped App Services

## Description
This query will return a list of App Services that have a "stopped" state

## Sample output
```
[
  {
    "kind": "app",
    "name": "WebApp-123",
    "state": "Stopped"
  },
  {
    "kind": "functionapp",
    "name": "FunctionApp-123",
    "state": "Stopped"
  }
]
```
