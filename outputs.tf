output "configs_id" {
  description = "Map of id values across all configs, keyed the same as var.configs"
  value       = { for k, v in docker_config.configs : k => v.id }
}
output "configs_data" {
  description = "Map of data values across all configs, keyed the same as var.configs"
  value       = { for k, v in docker_config.configs : k => v.data }
}
output "configs_data_raw" {
  description = "Map of data_raw values across all configs, keyed the same as var.configs"
  value       = { for k, v in docker_config.configs : k => v.data_raw }
}
output "configs_labels" {
  description = "Map of labels values across all configs, keyed the same as var.configs"
  value       = { for k, v in docker_config.configs : k => v.labels }
}
output "configs_name" {
  description = "Map of name values across all configs, keyed the same as var.configs"
  value       = { for k, v in docker_config.configs : k => v.name }
}

