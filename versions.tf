terraform {
  required_version = ">= 1.3.2"



  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.97.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.36.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.17.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }
}
