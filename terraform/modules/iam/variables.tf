variable "oidc_provider_arn" {
  description = "OIDC provider ARN to associate IAM roles with service accounts (IRSA)"
  type        = string
}

variable "zone_arn" {
  description = "Hosted Zone ARN for IRSA"
  type        = string
}