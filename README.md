# Azure - Delegated DNS Zone

## Introduction

This module will create a Delegated DNS Zone from LNRisk.io in Azure.
<br />
The Delegated zone will be created using the Azure subscription name
<br />

## Input

<!--- BEGIN_TF_DOCS --->
## Providers

| Name | Version |
|------|---------|
| azurerm.child | >= 2.0.0 >= 2.0.0 |
| azurerm.parent | >= 2.0.0 >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| child\_domain\_prefix | child domain prefix (<child>.<domain>.<prefix>.<parent domain>) | `string` | n/a | yes |
| child\_domain\_resource\_group\_name | Name of the target resource group | `string` | n/a | yes |
| child\_domain\_subscription\_id | ID of the target subscription | `string` | n/a | yes |
| parent\_domain | parent domain | `string` | n/a | yes |
| parent\_domain\_resource\_group\_name | Name of the parent resource\_group - This is the owner of the root domain | `string` | n/a | yes |
| parent\_domain\_subscription\_id | ID of the parent subscription - This is the owner of the parent domain | `string` | n/a | yes |
| tags | Tags to be applied to resources (inclusive) | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | id of dns child zone |
| name | The DNS zone that has been delegated to you |
<!--- END_TF_DOCS --->