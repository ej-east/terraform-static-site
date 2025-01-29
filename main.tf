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
  index_document = var.index_document
  error_document = "error.html"
  acl            = var.acl

  tags = var.tags
}

module "acm" {
  source = "./modules/acm"
  domain_name       = var.domain_name
  validation_method = var.validation_method
  zone_id           = var.zone_id

  tags = var.tags
}

module "cdn" {
  source                = "./modules/cdn"
  origin_domain_name    = module.s3.bucket_website_endpoint
  origin_access_identity = module.s3.bucket_id
  domain_name           = var.domain_name
  certificate_arn       = module.acm.certificate_arn
  default_root_object   = module.s3.bucket_website_endpoint

  tags = var.tags
}

module "route53" {
  source = "./modules/route53"
  zone_id = var.zone_id
  record_name = var.domain_name
  alias_target = module.cdn.cloudfront_domain_name
  alias_id_zone = module.cdn.cloudfront_zone_id
}