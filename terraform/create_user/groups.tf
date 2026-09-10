resource "googleworkspace_group_member" "two_fa" {
  count = var.enable_2fa ? 1 : 0

  group_id = data.googleworkspace_group.enable_2fa.email
  email    = googleworkspace_user.main.primary_email

  role = "MEMBER"

  depends_on = [googleworkspace_user.main]
}

resource "googleworkspace_group_member" "core_drive_content_manager" {
  count = var.drive_core_manager ? 1 : 0

  group_id = data.googleworkspace_group.core_drive_content_manager.email
  email    = googleworkspace_user.main.primary_email

  role = "MEMBER"

  depends_on = [googleworkspace_user.main]
}

resource "googleworkspace_group_member" "automation_drive_manager" {
  count = var.drive_automation_manager ? 1 : 0

  group_id = data.googleworkspace_group.automation_drive_manager.email
  email    = googleworkspace_user.main.primary_email

  role = "MEMBER"

  depends_on = [googleworkspace_user.main]
}

# GCP Groups
resource "googleworkspace_group_member" "gcp_developers" {
  count = var.gcp.developer ? 1 : 0

  group_id = data.googleworkspace_group.gcp_developers.email
  email    = googleworkspace_user.main.primary_email

  role = "MEMBER"

  depends_on = [googleworkspace_user.main]
}

resource "googleworkspace_group_member" "gitlab_developer" {
  count = var.gitlab.developer ? 1 : 0

  group_id = data.googleworkspace_group.gitlab_developers.email
  email    = googleworkspace_user.main.primary_email

  role = "MEMBER"

  depends_on = [googleworkspace_user.main]
}

resource "googleworkspace_group_member" "gitlab_maintainer" {
  count = var.gitlab.maintainer ? 1 : 0

  group_id = data.googleworkspace_group.gitlab_maintainers.email
  email    = googleworkspace_user.main.primary_email

  role = "MEMBER"

  depends_on = [googleworkspace_user.main]
}