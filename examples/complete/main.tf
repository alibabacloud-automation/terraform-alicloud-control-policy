resource "random_integer" "default" {
  min = 100000
  max = 999999
}

data "alicloud_resource_manager_folders" "example" {}

module "example" {
  source                      = "../.."
  control_policy_name         = "${var.control_policy_name}-${random_integer.default.result}"
  resource_manager_folder_ids = data.alicloud_resource_manager_folders.example.folders[*].folder_id
}
