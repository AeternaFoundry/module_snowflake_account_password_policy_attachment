variable "account_password_policy_attachments" {
  description = <<EOT
Map of account_password_policy_attachments, attributes below
Required:
    - password_policy
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    password_policy = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

