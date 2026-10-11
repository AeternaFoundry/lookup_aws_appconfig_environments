data "aws_appconfig_environments" "appconfig_environments_lookup" {
  for_each = var.appconfig_environments_lookup

  application_id = each.value.application_id
  region         = each.value.region
}

