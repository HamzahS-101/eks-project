module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  cluster_name         = var.cluster_name
}

module "eks" {
  source = "./modules/eks"

  cluster_name                         = var.cluster_name
  cluster_version                      = var.cluster_version
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs
  vpc_id                               = module.vpc.vpc_id
  subnet_ids                           = module.vpc.private_subnet_ids
  control_plane_subnet_ids             = module.vpc.private_subnet_ids
  node_disk_size                       = var.node_disk_size
  node_instance_types                  = var.node_instance_types
  node_desired_size                    = var.node_desired_size
  node_min_size                        = var.node_min_size
  node_max_size                        = var.node_max_size
}

module "iam" {
  source = "./modules/iam"

  oidc_provider_arn = module.eks.oidc_provider_arn
  zone_arn          = module.route53.zone_arn
}

module "route53" {
  source = "./modules/route53"

  zone_name = var.zone_name
}