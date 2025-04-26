variable "private_subnet_ids" {
  description = "List of private subnet IDs for the RDS instance"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "Name of the DB subnet group"
  type        = string
}

variable "db_instance_identifier" {
  description = "Identifier for the RDS DB instance"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage size in GB"
  type        = number
}

variable "engine" {
  description = "Database engine type (e.g., mysql)"
  type        = string
}

variable "engine_version" {
  description = "Version of the database engine"
  type        = string
}

variable "instance_class" {
  description = "Instance type for RDS (e.g., db.t3.micro)"
  type        = string
}


variable "db_name" {
  description = "Name of the database to create"
  type        = string
}

variable "db_username" {
  description = "Master username for the RDS database"
  type        = string
}

variable "db_password" {
  description = "Master password for the RDS database"
  type        = string
}

variable "db_secret_name" {
  description = "Name of the AWS Secrets Manager secret for the database credentials."
  type        = string
}

