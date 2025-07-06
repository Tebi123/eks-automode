# kms.tf
resource "aws_kms_key" "this" {
  description             = "EKS Secret Encryption Key"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = merge(local.tags, {
    Name = "eks-cluster-key"
  })

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_kms_alias" "this" {
  name          = "alias/eks/TebiEKS-cluster-us"
  target_key_id = aws_kms_key.this.key_id

  lifecycle {
    create_before_destroy = true
  }
}