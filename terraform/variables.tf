variable "project_id" {
  type = string
  default = "engineering-handbook-lb-forwarding-rule"
}

variable "provider_region" {
  type    = string
  default = "us-central1"
}

variable "static_content_bucket_name" {
  type = string
  default = "site-bucket-takeoffhandbook"
}

variable "managed_domain" {
  type = string
  default = "takeoffenghandbook"
}
