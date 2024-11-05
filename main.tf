# Create policy
resource "alicloud_resource_manager_control_policy" "default" {
  control_policy_name = var.control_policy_name
  description         = var.description
  effect_scope        = var.effect_scope
  policy_document     = jsonencode(var.policy_document)
}

# Enable the control policy
data "alicloud_resource_manager_resource_directories" "default" {
}

resource "alicloud_resource_manager_resource_directory" "default" {
  count  = length(data.alicloud_resource_manager_resource_directories.default.directories) > 0 ? 0 : 1
  status = "Enabled"
}

# Add policy under resource folder
resource "alicloud_resource_manager_control_policy_attachment" "attach" {
  for_each  = toset(var.resource_manager_folder_ids)
  policy_id = alicloud_resource_manager_control_policy.default.id
  target_id = each.value
}
