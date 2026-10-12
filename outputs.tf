output "account_password_policy_attachments_id" {
  description = "Map of id values across all account_password_policy_attachments, keyed the same as var.account_password_policy_attachments except keys with no id are omitted"
  value       = { for k, v in snowflake_account_password_policy_attachment.account_password_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_password_policy_attachments_password_policy" {
  description = "Map of password_policy values across all account_password_policy_attachments, keyed the same as var.account_password_policy_attachments except keys with no password_policy are omitted"
  value       = { for k, v in snowflake_account_password_policy_attachment.account_password_policy_attachments : k => v.password_policy if v.password_policy != null && length(v.password_policy) > 0 }
}

