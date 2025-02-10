Alicloud ControlPolicy Terraform Module On Alibaba Cloud

terraform-alicloud-control-policy
---

[English](README.md) | 简体中文

本方案使用 Terraform 自动化执行，使用 Terraform，创建新的管控策略（ControlPolicy），并且绑定在用户指定的资源夹下。

本 Module 支持创建以下资源:

* [alicloud_resource_manager_control_policy](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_control_policy)
* [alicloud_resource_manager_resource_directory](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_resource_directory)
* [alicloud_resource_manager_control_policy_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_control_policy_attachment)

## 用法

```hcl
module "example" {
  source              = "terraform-alicloud-modules/control-policy/alicloud"
  control_policy_name = "policy_name"
}
```

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

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


## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Will(ppnjy@qq.com)

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
