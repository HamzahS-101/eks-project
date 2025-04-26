module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version =  "20.36.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_public_access       = true
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs

  enable_irsa = true

  vpc_id                   = var.vpc_id
  subnet_ids               = var.subnet_ids
  control_plane_subnet_ids = var.control_plane_subnet_ids

  eks_managed_node_group_defaults = {
    disk_size      = var.node_disk_size
    instance_types = var.node_instance_types
  }

  eks_managed_node_groups = {
    default = {
      desired_size = var.node_desired_size
      max_size     = var.node_max_size
      min_size     = var.node_min_size
      labels = {
        role = "worker"
      }
    }
  }
}

