output "appconfig_environments_lookup_id" {
  description = "Map of id values across all appconfig_environments_lookup, keyed the same as var.appconfig_environments_lookup"
  value       = { for k, v in data.aws_appconfig_environments.appconfig_environments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appconfig_environments_lookup_application_id" {
  description = "Map of application_id values across all appconfig_environments_lookup, keyed the same as var.appconfig_environments_lookup"
  value       = { for k, v in data.aws_appconfig_environments.appconfig_environments_lookup : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "appconfig_environments_lookup_environment_ids" {
  description = "Map of environment_ids values across all appconfig_environments_lookup, keyed the same as var.appconfig_environments_lookup"
  value       = { for k, v in data.aws_appconfig_environments.appconfig_environments_lookup : k => v.environment_ids if v.environment_ids != null && length(v.environment_ids) > 0 }
}
output "appconfig_environments_lookup_region" {
  description = "Map of region values across all appconfig_environments_lookup, keyed the same as var.appconfig_environments_lookup"
  value       = { for k, v in data.aws_appconfig_environments.appconfig_environments_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

