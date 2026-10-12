resource "snowflake_account_password_policy_attachment" "account_password_policy_attachments" {
  for_each = var.account_password_policy_attachments

  password_policy = each.value.password_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

