output "email" {
  value = googleworkspace_user.main.primary_email
}

output "password" {
  value     = nonsensitive(random_password.password.result)
  sensitive = false
}
