
data "googleworkspace_group" "enable_2fa" {
  email = "2fa-enabled@example.com"
}

data "googleworkspace_group" "core_drive_content_manager" {
  email = "drive-contentmanager@example.com"
}

data "googleworkspace_group" "automation_drive_manager" {
  email = "automation_drive_manager@example.com"
}

data "googleworkspace_group" "gcp_developers" {
  email = "gcp-developers@example.com"
}

# GitLab groups
data "googleworkspace_group" "gitlab_developers" {
  email = "gl-developers@example.com"
}

data "googleworkspace_group" "gitlab_maintainers" {
  email = "gl-maintainers@example.com"
}
