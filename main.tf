resource "google_kms_autokey_config" "kms_autokey_configs" {
  for_each = var.kms_autokey_configs

  folder                      = each.value.folder
  deletion_policy             = each.value.deletion_policy
  key_project                 = each.value.key_project
  key_project_resolution_mode = each.value.key_project_resolution_mode

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

