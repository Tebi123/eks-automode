resource "aws_cloudwatch_log_group" "eks_cluster" {
  name              = "/aws/eks/TebiEKS-cluster-us/cluster"
  retention_in_days = 7

  tags = merge(local.tags, {
    Name = "eks-cluster-logs"
  })

  lifecycle {
    create_before_destroy = true
  }
}