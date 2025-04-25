variable "cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDRs allowed to access EKS public endpoint"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC where the EKS cluster and worker nodes will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for worker nodes"
  type        = list(string)
}

variable "control_plane_subnet_ids" {
  description = "List of subnet IDs for control plane"
  type        = list(string)
}

variable "node_disk_size" {
  description = "Disk size in GiB for worker nodes"
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
  description = "Minimum number of worker nodes (for autoscaling)"
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of worker nodes (for autoscaling)"
  type        = number
}
