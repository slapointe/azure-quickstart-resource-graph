# Azure Resource Graph quickstart queries

This repo contains all currently available Azure Resource Graph queries contributed by ShareGate and the community.

## About source code in this repository
* Query code goes under the the right `queries` folder.
* Create a folder for the service it concerns (i.g.: storageAccounts, cdn, virtualNetworks).
* Create a folder for your query (all lower case with dases instead of spaces).
* The query goes in a `query.txt` file.
* Create a README.md file to provide a title/description of what the query does.
* (On Windows) Run `Test-ResourceGraphQueries.ps1` to test the queries before creating a PR.
* You can place your query code in this repository by creating a PR.

## Requirements for CI of queries
* PowerShell v5+
* Azure CLI
* Azure CLI Resource Graph extension (`resource-graph`)

## Setup for CI
* [Install Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
* Install Azure Resource Graph extension (`az extension add --name resource-graph`)
* az login
* in a powershell window, run `.\Test-ResourceGraphQueries.ps1` for all queries or `.\Test-ResourceGraphQueries.ps1 -FolderToTest queries\generic\count-azure-resources` for one in particular
