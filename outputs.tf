output "compliance_security_profile_workspace_settings_id" {
  description = "Map of id values across all compliance_security_profile_workspace_settings, keyed the same as var.compliance_security_profile_workspace_settings except keys with no id are omitted"
  value       = { for k, v in databricks_compliance_security_profile_workspace_setting.compliance_security_profile_workspace_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compliance_security_profile_workspace_settings_compliance_security_profile_workspace" {
  description = "Map of compliance_security_profile_workspace values across all compliance_security_profile_workspace_settings, keyed the same as var.compliance_security_profile_workspace_settings except keys with no compliance_security_profile_workspace are omitted"
  value       = { for k, v in databricks_compliance_security_profile_workspace_setting.compliance_security_profile_workspace_settings : k => one(v.compliance_security_profile_workspace) if v.compliance_security_profile_workspace != null && length(v.compliance_security_profile_workspace) > 0 }
}
output "compliance_security_profile_workspace_settings_etag" {
  description = "Map of etag values across all compliance_security_profile_workspace_settings, keyed the same as var.compliance_security_profile_workspace_settings except keys with no etag are omitted"
  value       = { for k, v in databricks_compliance_security_profile_workspace_setting.compliance_security_profile_workspace_settings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "compliance_security_profile_workspace_settings_provider_config" {
  description = "Map of provider_config values across all compliance_security_profile_workspace_settings, keyed the same as var.compliance_security_profile_workspace_settings except keys with no provider_config are omitted"
  value       = { for k, v in databricks_compliance_security_profile_workspace_setting.compliance_security_profile_workspace_settings : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "compliance_security_profile_workspace_settings_setting_name" {
  description = "Map of setting_name values across all compliance_security_profile_workspace_settings, keyed the same as var.compliance_security_profile_workspace_settings except keys with no setting_name are omitted"
  value       = { for k, v in databricks_compliance_security_profile_workspace_setting.compliance_security_profile_workspace_settings : k => v.setting_name if v.setting_name != null && length(v.setting_name) > 0 }
}

