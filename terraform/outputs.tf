
output "internal_users_initial_credentials" {
  description = "Initial password output from all users"
  value       = { for instance in module.internal_users : instance.email => instance.password }
}

output "external_users_initial_credentials" {
  description = "Initial password output from all users"
  value       = { for instance in module.external_users : instance.email => instance.password }
}
