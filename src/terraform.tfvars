aws_region                                 = "sa-east-1"
aws_vpc_name                               = "eks-vpc"
aws_vpc_cidr                               = "10.0.0.0/16"
aws_vpc_azs                                = ["sa-east-1a", "sa-east-1b", "sa-east-1c"]
aws_vpc_private_subnets                    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
aws_vpc_public_subnets                     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
aws_eks_name                               = "my-cluster"
aws_eks_version                            = "1.33"
aws_eks_managed_node_groups_instance_types = ["t3.small"]
aws_project_tags = {
  Terraform   = "true"
  Environment = "producao"
  Project     = "eks-terraform-cluster"
}