resource "aws_db_subnet_group" "this" {
  name       = var.db_subnet_group_name
  subnet_ids = var.private_subnet_ids
}

resource "aws_db_instance" "this" {
  identifier           = var.db_instance_identifier
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_subnet_group_name = aws_db_subnet_group.this.name
  publicly_accessible  = false
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot  = true
}

