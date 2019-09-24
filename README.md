Azure Resource Graph quickstart queries
This repo contains all currently available Azure Resource Graph queries contributed by ShareGate and the community.

## About source code in this repository
* Query code goes under the the right `queries` folder.
* Create a folder for the service it concerns if not it does not yet exists
* Create a folder for your query (all lower case with dases instead of spaces)
* The query goes in a `query.txt` file
* (On Windows) Run `Test-ResourceGraphQueries.ps1` to test the queries before creating a PR.
* You can place your query code in this repository by creating a PR.

## Requirements for CI of queries
* PowerShell v5+
* Azure CLI
* Azure CLI Resource Graph extension (`resource-graph`)

## Setup for CI
* [Install Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
* Install Azure Resource Graph extension (`az extension add --name resource-graph`)
