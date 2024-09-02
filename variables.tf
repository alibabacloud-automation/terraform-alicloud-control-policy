variable "resource_manager_folder_ids" {
  description = "Bound resource folder ID group"
  type        = list(string)
  default     = []
}

variable "control_policy_name" {
  description = "Policy name"
  type        = string
  default     = "policy_name"
}

variable "description" {
  description = "Policy description"
  type        = string
  default     = ""
}

variable "effect_scope" {
  description = "Policy scope"
  type        = string
  default     = "RAM"
}

variable "policy_document" {
  description = "Policy configuration"
  default = {
    "Version" : "1", "Statement" : [{
      "Effect" : "Deny", "Action" : ["ram:UpdateRole", "ram:DeleteRole", "ram:AttachPolicyToRole", "ram:DetachPolicyFromRole"], "Resource" : "acs:ram:*:*:role/ResourceDirectoryAccountAccessRole"
    }]
  }
}
