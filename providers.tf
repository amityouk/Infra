##############################################
# AWS Provider Configuration
##############################################

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = "DevOps"
      Terraform   = "true"
    }
  }
}

##############################################
# Optional Secondary Region Provider
# (For CloudFront ACM certificates, DR, etc.)
##############################################

provider "aws" {
  alias  = "use1"
  region = "us-east-1"

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Terraform   = "true"
    }
  }
}

##############################################
# Random Provider
##############################################

provider "random" {}

##############################################
# TLS Provider
##############################################

provider "tls" {}

##############################################
# Local Provider
##############################################

provider "local" {}

##############################################
# Archive Provider
##############################################

provider "archive" {}

##############################################
# Time Provider
##############################################

provider "time" {}

##############################################
# Null Provider
##############################################

provider "null" {}
