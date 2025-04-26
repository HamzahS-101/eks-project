output "db_instance_endpoint" {
  description = "Endpoint of the created RDS instance"
  value       = aws_db_instance.this.endpoint
}

output "db_instance_identifier" {
  description = "Identifier of the created RDS instance"
  value       = aws_db_instance.this.id
}


output "database_secret_arn" {
  description = "The ARN of the AWS Secrets Manager secret storing database credentials."
  value       = aws_secretsmanager_secret.db_secret.arn
}