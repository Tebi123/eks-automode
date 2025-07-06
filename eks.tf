################################################################################
# EKS Module
#################################################################################



module "eks" {
  source = "terraform-aws-modules/eks/aws" # Use the EKS module from the Terraform AWS Modules collection

  cluster_name                   = var.cluster_name
  cluster_version                = var.eks_cluster_version
  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  cluster_compute_config = {
    enabled    = true
    node_pools = ["system", "general-purpose"]
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  tags = local.tags
}
