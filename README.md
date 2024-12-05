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

```hcl
module "example" {
  source              = "terraform-alicloud-modules/control-policy/alicloud"
  control_policy_name = "policy_name"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.120.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.120.1 |

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
