output "cert_manager_irsa_arn" {
  description = "ARN for the cert-manager IRSA"
  value       = module.cert_manager_irsa.iam_role_arn
}

output "external_dns_irsa_arn" {
  description = "ARN for the external-dns IRSA"
  value       = module.external_dns_irsa.iam_role_arn
}