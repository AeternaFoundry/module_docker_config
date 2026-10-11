output "configs_id" {
  description = "Map of id values across all configs, keyed the same as var.configs except keys with no id are omitted"
  value       = { for k, v in docker_config.configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "configs_data" {
  description = "Map of data values across all configs, keyed the same as var.configs except keys with no data are omitted"
  value       = { for k, v in docker_config.configs : k => v.data if v.data != null && length(v.data) > 0 }
}
output "configs_data_raw" {
  description = "Map of data_raw values across all configs, keyed the same as var.configs except keys with no data_raw are omitted"
  value       = { for k, v in docker_config.configs : k => v.data_raw if v.data_raw != null && length(v.data_raw) > 0 }
}
output "configs_labels" {
  description = "Map of labels values across all configs, keyed the same as var.configs except keys with no labels are omitted"
  value       = { for k, v in docker_config.configs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "configs_name" {
  description = "Map of name values across all configs, keyed the same as var.configs except keys with no name are omitted"
  value       = { for k, v in docker_config.configs : k => v.name if v.name != null && length(v.name) > 0 }
}

