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
| azurerm | >= 2.0.0 >= 2.0.0 |
| azurerm.iog | >= 2.0.0 >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| domain\_prefix | Zone prefix | `string` | n/a | yes |
| iog\_resource\_group\_name | Name of the parent subscription - This is the owner of the root domain | `string` | n/a | yes |
| iog\_subscription\_id | ID of the parent subscription - This is the owner of the root domain | `string` | n/a | yes |
| names | Names to be applied to resources (inclusive) | <pre>object({<br>                  environment  = string<br>                  location     = string<br>                  market       = string<br>                  product_name = string<br>                })</pre> | n/a | yes |
| sre\_resource\_group\_name | Name of the target resource group | `string` | n/a | yes |
| sre\_subscription\_id | ID of the target subscription | `string` | n/a | yes |
| tags | Tags to be applied to resources (inclusive) | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | The DNS zone that has been delegated to you |
<!--- END_TF_DOCS --->