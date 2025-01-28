terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3" {
  source         = "./modules/s3-static"
  bucket_name    = var.bucket_name
  region         = var.region
  file_path      = var.file_path
  index_document = "index.html"
  error_document = "error.html"
  acl            = "public-read"
}

