module "eks_cluster" {
  source          = "./eks-cluster"
  aws_region      = "us-east-1"
  cluster_name    = "test-eks-cluster"
  vpc_id          = "vpc-id"
  subnet_ids      = ["subnet-1", "subnet-2", "subnet-3"]
  node_group_name = "eks-node-group"
  node_instance_type = "t3.medium"
  desired_capacity = 2
  min_capacity     = 1
  max_capacity     = 3
}

output "eks_cluster_endpoint" {
  value = module.eks_cluster.eks_cluster_endpoint
}

output "eks_cluster_name" {
  value = module.eks_cluster.eks_cluster_name
}

