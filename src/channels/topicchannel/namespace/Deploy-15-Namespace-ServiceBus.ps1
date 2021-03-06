<#
.SYNOPSIS
Invokes the deployment of a Service Bus namespace resource for use by various AIM components
.DESCRIPTION
Prior to running this script ensure you are authenticated against Azure and have the desired subscription set.
.EXAMPLE
.\Deploy-20-Namespace-ServiceBus.ps1
#>

$params = Get-Content -Path $PSScriptRoot\namespace.sb.dev.psparameters.json -Raw | ConvertFrom-Json
& $PSScriptRoot\New-Namespace-ServiceBus.ps1 -resourceGroupName $params.resourceGroupName -location $params.location -namespace $params.namespace -sku $params.sku -tags $params.tags