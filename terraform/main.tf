module "internal_users" {
  source                        = "./create_user"
  for_each                      = var.internal_users
  first_name                    = each.value["first_name"]
  last_name                     = each.value["last_name"]
  email_name                    = each.value["email_name"]
  recovery_email                = each.value["recovery_email"]
  suspended                     = each.value["suspended"]
  org_unit_path                 = each.value["org_unit_path"]
  organizations                 = each.value["organizations"]
  manager_email                 = each.value["manager_email"]
  enable_2fa                    = each.value["enable_2fa"]
  change_password_at_next_login = each.value["change_password_at_next_login"]
  drive_core_manager            = each.value["drive_core_manager"]
  drive_automation_manager      = each.value["drive_automation_manager"]
  gcp                           = each.value["gcp"]
  gitlab                        = each.value["gitlab"]
}

module "external_users" {
  source                        = "./create_user"
  for_each                      = var.external_users
  first_name                    = each.value["first_name"]
  last_name                     = each.value["last_name"]
  email_name                    = each.value["email_name"]
  recovery_email                = each.value["recovery_email"]
  suspended                     = each.value["suspended"]
  org_unit_path                 = each.value["org_unit_path"]
  organizations                 = each.value["organizations"]
  manager_email                 = each.value["manager_email"]
  enable_2fa                    = false # enabled in the OU instead
  change_password_at_next_login = each.value["change_password_at_next_login"]
  drive_core_manager            = false
  drive_automation_manager      = false
  gcp = {
    developer = false
  }
  gitlab = {
    developer  = false
    maintainer = false
  }
}
