variable "origin_domain_name" {
  description = "The domain name of the origin"
  type        = string
}

variable "origin_access_identity" {
  description = "The Origin Access Identity for CloudFront"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the CDN"
  type        = string
}

variable "tags" {
  description = "Tags for the CDN"
  type        = map(string)
  default     = {}
}

variable "default_root_object" {
  description = "Index Page for CDN"
  type        = string
}