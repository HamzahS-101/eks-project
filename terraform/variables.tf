#VPC

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


#EKS

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



#Route53

variable "zone_name" {
  description = "Hosted Zone name"
  type        = string
}

