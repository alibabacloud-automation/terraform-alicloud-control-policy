# Complete

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.120.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.120.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_example"></a> [example](#module\_example) | ../.. | n/a |

## Resources

| Name | Type |
|------|------|
| [random_integer.default](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |
| [alicloud_resource_manager_folders.example](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/data-sources/resource_manager_folders) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_control_policy_name"></a> [control\_policy\_name](#input\_control\_policy\_name) | The name of the control policy | `string` | `"control-policy"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_control_policy_name"></a> [this\_control\_policy\_name](#output\_this\_control\_policy\_name) | The name of the control policy. |
<!-- END_TF_DOCS -->