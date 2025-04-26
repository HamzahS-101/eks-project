resource "aws_secretsmanager_secret" "db_secret" {
  name = var.db_secret_name
}

resource "aws_secretsmanager_secret_version" "db_secret_version" {
  secret_id = aws_secretsmanager_secret.db_secret.id

  secret_string = jsonencode({
    host     = aws_db_instance.this.address
    user     = var.db_username
    password = var.db_password
    database = var.db_name
  })
}
