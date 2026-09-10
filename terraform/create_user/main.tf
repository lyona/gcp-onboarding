locals {
  primary_email       = lower(var.organizations.description == "Contractor" ? "${var.email_name}-contractor@example.com" : "${var.email_name}@example.com")
  md5_random_password = md5(random_password.password.result)
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$&*()-_=+[]{}?"
}

resource "googleworkspace_user" "main" {
  primary_email                 = local.primary_email
  recovery_email                = var.recovery_email
  suspended                     = var.suspended
  org_unit_path                 = var.org_unit_path
  password                      = local.md5_random_password
  change_password_at_next_login = var.change_password_at_next_login
  hash_function                 = "MD5"
  name {
    given_name  = var.first_name
    family_name = var.last_name
  }
  emails {
    address     = local.primary_email
    custom_type = null
    primary     = true
    type        = "work"
  }
  organizations {
    department  = var.organizations.department
    description = var.organizations.description
    title       = var.organizations.title
    primary     = var.organizations.primary
    type        = "work"
  }
  relations {
    type  = "manager"
    value = var.manager_email
  }

  lifecycle {
    ignore_changes = [
      emails,
      change_password_at_next_login,
      recovery_phone
    ]
  }
}
