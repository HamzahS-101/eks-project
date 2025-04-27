variable "cert_manager_irsa_arn" {
  description = "ARN for the cert-manager IRSA"
  type        = string
}

variable "external_dns_irsa_arn" {
  description = "ARN for the external-dns IRSA"
  type        = string
}

variable "external_secrets_irsa_arn" {
  description = "ARN for the external-secrets IRSA"
  type        = string
}

variable "hosted_zone_id" {
  description = "Hosted Zone ID for cert-manager DNS challenge"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string

}