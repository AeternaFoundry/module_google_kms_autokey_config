output "kms_autokey_configs_id" {
  description = "Map of id values across all kms_autokey_configs, keyed the same as var.kms_autokey_configs except keys with no id are omitted"
  value       = { for k, v in google_kms_autokey_config.kms_autokey_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_autokey_configs_deletion_policy" {
  description = "Map of deletion_policy values across all kms_autokey_configs, keyed the same as var.kms_autokey_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_kms_autokey_config.kms_autokey_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "kms_autokey_configs_etag" {
  description = "Map of etag values across all kms_autokey_configs, keyed the same as var.kms_autokey_configs except keys with no etag are omitted"
  value       = { for k, v in google_kms_autokey_config.kms_autokey_configs : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "kms_autokey_configs_folder" {
  description = "Map of folder values across all kms_autokey_configs, keyed the same as var.kms_autokey_configs except keys with no folder are omitted"
  value       = { for k, v in google_kms_autokey_config.kms_autokey_configs : k => v.folder if v.folder != null && length(v.folder) > 0 }
}
output "kms_autokey_configs_key_project" {
  description = "Map of key_project values across all kms_autokey_configs, keyed the same as var.kms_autokey_configs except keys with no key_project are omitted"
  value       = { for k, v in google_kms_autokey_config.kms_autokey_configs : k => v.key_project if v.key_project != null && length(v.key_project) > 0 }
}
output "kms_autokey_configs_key_project_resolution_mode" {
  description = "Map of key_project_resolution_mode values across all kms_autokey_configs, keyed the same as var.kms_autokey_configs except keys with no key_project_resolution_mode are omitted"
  value       = { for k, v in google_kms_autokey_config.kms_autokey_configs : k => v.key_project_resolution_mode if v.key_project_resolution_mode != null && length(v.key_project_resolution_mode) > 0 }
}

