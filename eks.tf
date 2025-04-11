#import the module template
module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "~> 20.31"

#cluster Info (control plane)
  cluster_name    = local.name
  cluster_version = "1.31"
  cluster_endpoint_public_access = true

  cluster_addons ={
        vpc-cni = {
            most-recent = true
        }
        kube-proxy = {
            most-recent = true
        }

        coredns = {
            most-recent = true
        }
    }

  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  #control plane network
  control_plane_subnet_ids = module.vpc.intra_subnets

#managaing nodes in the cluster
   eks_managed_node_group_defaults = {
    instance_types = ["t2.medium"]
    attach_cluster_primary_security_group = true
   }

    eks_managed_node_groups = {
    ruturaj-cluster-ng = {
      
      instance_types = ["t2.medium"]

      min_size     = 2
      max_size     = 3
      desired_size = 2

      capacity_type = "SPOT"
    }
  }

  tags = {
    Environment = local.env
    Terraform = "true"
  }
  
}