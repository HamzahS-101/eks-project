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


module "route53" {
  source = "./modules/route53"

  zone_name = var.zone_name
}
module "iam" {
  source = "./modules/iam"

  oidc_provider_arn = module.eks.oidc_provider_arn
  zone_arn          = module.route53.zone_arn
}

module "helm" {
  source = "./modules/helm"

  cert_manager_irsa_arn = module.iam.cert_manager_irsa_arn
  external_dns_irsa_arn = module.iam.external_dns_irsa_arn

  depends_on = [
    module.eks,
    module.iam
  ]
}

module "database" {
  source = "./modules/database"

  private_subnet_ids       = module.vpc.private_subnet_ids
  db_subnet_group_name     = var.db_subnet_group_name
  db_instance_identifier   = var.db_instance_identifier
  allocated_storage        = var.db_allocated_storage
  engine                   = var.db_engine
  engine_version           = var.db_engine_version
  instance_class           = var.db_instance_class
  db_name                  = var.db_name
  db_username              = var.db_username
  db_password              = var.db_password
  db_secret_name           = var.db_secret_name
}

