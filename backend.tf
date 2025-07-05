# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "TebiEKS-terraform-statefile"

#   lifecycle {
#     prevent_destroy = true
#   }
# }

# resource "aws_dynamodb_table" "TebiEKS_terraform_locks" {
#   name         = "TebiEKS-terraform-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     Name = "Terraform State Lock"
#   }
# }

# terraform {
#   backend "s3" {
#     bucket  = "some_name_here"
#     key     = "networking/terraform.tfstate"
#     region  = "eu-west-2"
#   }
# }

# # main.tf or backend.tf
# terraform {
#   backend "s3" {
#     bucket         = "omotebi-terraform-state"
#     key            = "eks-auto-mode/terraform.tfstate"
#     region         = "eu-west-2"
#     dynamodb_table = "terraform-lock"
#     encrypt        = true
#   }
# }