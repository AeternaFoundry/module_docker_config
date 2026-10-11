resource "docker_config" "configs" {
  for_each = var.configs

  name     = each.value.name
  data     = each.value.data
  data_raw = each.value.data_raw

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      label = labels.value.label
      value = labels.value.value
    }
  }
}

