variable "first_name" {
  description = "First name"
  type        = string
}

variable "last_name" {
  description = "Last name"
  type        = string
}

variable "email_name" {
  description = "The name to use in the email, i.e {email_name}@example.com"
  type        = string
}

variable "recovery_email" {
  description = "Recovery email"
  type        = string
}

variable "organizations" {
  description = "An object containing the organisation info"
  type        = any
}

variable "suspended" {
  description = "Suspended or not"
  type        = bool
}

variable "org_unit_path" {
  description = "Org unit path"
  type        = string
}

variable "manager_email" {
  description = "Email ID of the manager. Required to offboard the user"
  type        = string
}

variable "enable_2fa" {
  description = "Enables 2fa"
  type        = bool
}

variable "change_password_at_next_login" {
  description = "Force the user to change password"
  type        = bool
}

variable "drive_core_manager" {
  description = "Enables core drive manager access"
  type        = bool
}

# variable "drive_core_contributor" {
#   description = "Enables core drive contributor access"
#   type        = bool
# }

variable "drive_automation_manager" {
  description = "Enables automation drive manager access"
  type        = bool
}

variable "gcp" {
  description = "Object containing GCP permissions requirements"
  type        = any
}

variable "gitlab" {
  description = "Object containing GitLab permissions requirements"
  type        = any
}
