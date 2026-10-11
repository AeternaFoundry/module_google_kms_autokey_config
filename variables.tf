variable "kms_autokey_configs" {
  description = <<EOT
Map of kms_autokey_configs, attributes below
Required:
    - folder
Optional:
    - deletion_policy
    - key_project
    - key_project_resolution_mode
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    folder                      = string
    deletion_policy             = optional(string)
    key_project                 = optional(string)
    key_project_resolution_mode = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

