variable "compliance_security_profile_workspace_settings" {
  description = <<EOT
Map of compliance_security_profile_workspace_settings, attributes below
Required:
    - compliance_security_profile_workspace (block):
        - compliance_standards (required)
        - is_enabled (required)
Optional:
    - etag
    - setting_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    etag         = optional(string)
    setting_name = optional(string)
    compliance_security_profile_workspace = object({
      compliance_standards = list(string)
      is_enabled           = bool
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

