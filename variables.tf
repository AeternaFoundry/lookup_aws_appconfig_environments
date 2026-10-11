variable "appconfig_environments_lookup" {
  description = <<EOT
Map of appconfig_environments_lookup, attributes below
Required:
    - application_id
Optional:
    - region
EOT

  type = map(object({
    application_id = string
    region         = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

