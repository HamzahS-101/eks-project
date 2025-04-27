output "zone_arn" {
  description = "Hosted Zone arn"
  value       = aws_route53_zone.zone.arn
}

output "zone_id" {
  description = "Hosted Zone ID"
  value       = aws_route53_zone.zone.id
}