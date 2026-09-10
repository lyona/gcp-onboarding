variable "admin_email" {
  description = "Google workspace admin account"
  default     = "admin@example.com"
}

variable "internal_users" {
  description = "Object containing user details to create"
  default     = {}
  type        = any
}

variable "external_users" {
  description = "Object containing independent_advisors user details to create"
  default     = {}
  type        = any
}
