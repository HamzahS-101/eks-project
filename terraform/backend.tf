terraform {
  backend "s3" {
    bucket       = "eks-k8s-project"
    key          = "terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true
  }
}