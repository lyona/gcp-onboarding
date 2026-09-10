terraform {
  backend "gcs" {
    bucket = "tfstate-id"
    prefix = "common/onboarding"
  }
}
