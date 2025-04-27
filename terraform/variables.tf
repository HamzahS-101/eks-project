variable "region" {
  description = "AWS Region"
  type        = string

}

# VPC

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC."
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC."
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets."
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets."
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to use."
}


# EKS

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDRs that can access the EKS public endpoint"
  type        = list(string)
}

variable "node_disk_size" {
  description = "Disk size in GiB for each worker node"
  type        = number
}

variable "node_instance_types" {
  description = "List of instance types for worker nodes"
  type        = list(string)
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "node_min_size" {
  description = "Minimum number of worker nodes for the autoscaling group"
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of worker nodes for the autoscaling group"
  type        = number
}



# Route53

variable "zone_name" {
  description = "Hosted Zone name"
  type        = string
}

# Database

variable "db_subnet_group_name" {
  description = "Name for the RDS subnet group"
  type        = string
}

variable "db_instance_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage for RDS instance in GB"
  type        = number
}

variable "db_engine" {
  description = "Database engine (e.g., mysql)"
  type        = string
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
}

variable "db_instance_class" {
  description = "Database instance class"
  type        = string
}


variable "db_name" {
  description = "Database name inside RDS"
  type        = string
}

variable "db_username" {
  description = "Master username for the database"
  type        = string
}

variable "db_password" {
  description = "Master password for the database"
  type        = string
}

variable "db_secret_name" {
  description = "Name of the AWS Secrets Manager secret for the database credentials."
  type        = string
}




