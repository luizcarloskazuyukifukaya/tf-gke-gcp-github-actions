# Required Providers
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.51.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.6.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">=2.11.0"
    }
  }
}

# Variables
variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

# Provider
provider "google" {
  project = var.project_id
  region  = var.region

  #credentials = var.google_credentials
}

#provider "helm" {
#  kubernetes {
#    host                   = data.aws_eks_cluster.cluster.endpoint
#    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
#    exec {
#      api_version = "client.authentication.k8s.io/v1beta1"
#      args        = ["eks", "get-token", "--cluster-name", data.aws_eks_cluster.cluster.name]
#      command     = "aws"
#    }
#  }
#3}

#provider "kubernetes" {
#  host                   = data.aws_eks_cluster.cluster.endpoint
#  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
#  token                  = data.aws_eks_cluster_auth.cluster.token
#}



