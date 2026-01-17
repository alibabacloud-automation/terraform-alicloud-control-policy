Alicloud ControlPolicy Terraform Module On Alibaba Cloud

terraform-alicloud-control-policy
---

English | [简体中文](README-CN.md)

This scheme is implemented automatically using terraform. Using terraform, a new control policy is created and bound
under the resource folder specified by the user.

These types of resources are supported:

* [alicloud_resource_manager_control_policy](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_control_policy)
* [alicloud_resource_manager_resource_directory](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_resource_directory)
* [alicloud_resource_manager_control_policy_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_control_policy_attachment)

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Acontrol-policy&spm=docs.m.terraform-alicloud-modules.control-policy&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

```hcl
module "example" {
  source              = "terraform-alicloud-modules/control-policy/alicloud"
  control_policy_name = "policy_name"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

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

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_resource_manager_control_policy.default](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/resource_manager_control_policy) | resource |
| [alicloud_resource_manager_control_policy_attachment.attach](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/resource_manager_control_policy_attachment) | resource |
| [alicloud_resource_manager_resource_directory.default](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/resource_manager_resource_directory) | resource |
| [alicloud_resource_manager_resource_directories.default](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/data-sources/resource_manager_resource_directories) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_control_policy_name"></a> [control\_policy\_name](#input\_control\_policy\_name) | Policy name | `string` | `"policy_name"` | no |
| <a name="input_description"></a> [description](#input\_description) | Policy description | `string` | `""` | no |
| <a name="input_effect_scope"></a> [effect\_scope](#input\_effect\_scope) | Policy scope | `string` | `"RAM"` | no |
| <a name="input_policy_document"></a> [policy\_document](#input\_policy\_document) | Policy configuration | `map` | <pre>{<br>  "Statement": [<br>    {<br>      "Action": [<br>        "ram:UpdateRole",<br>        "ram:DeleteRole",<br>        "ram:AttachPolicyToRole",<br>        "ram:DetachPolicyFromRole"<br>      ],<br>      "Effect": "Deny",<br>      "Resource": "acs:ram:*:*:role/ResourceDirectoryAccountAccessRole"<br>    }<br>  ],<br>  "Version": "1"<br>}</pre> | no |
| <a name="input_resource_manager_folder_ids"></a> [resource\_manager\_folder\_ids](#input\_resource\_manager\_folder\_ids) | Bound resource folder ID group | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_control_policy_name"></a> [this\_control\_policy\_name](#output\_this\_control\_policy\_name) | n/a |
<!-- END_TF_DOCS -->


## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
