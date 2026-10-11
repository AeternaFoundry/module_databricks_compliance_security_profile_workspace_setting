resource "databricks_compliance_security_profile_workspace_setting" "compliance_security_profile_workspace_settings" {
  for_each = var.compliance_security_profile_workspace_settings

  etag         = each.value.etag
  setting_name = each.value.setting_name

  compliance_security_profile_workspace {
    compliance_standards = each.value.compliance_security_profile_workspace.compliance_standards
    is_enabled           = each.value.compliance_security_profile_workspace.is_enabled
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

