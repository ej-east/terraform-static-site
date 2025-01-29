variable "region" {
  description = "The region of the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "file_path" {
  description = "The file path of the S3 bucket"
  type        = string
  default     = "uploads"
}

variable "acl" {
  description = "The ACL of the S3 bucket"
  type        = string
}

variable "index_document" {
  description = "The index document"
  type        = string
}

variable "domain_name" {
  description = "The domain name of the certificate"
  type        = string
}

variable "validation_method" {
  description = "How to validate the certificate"
  type        = string
  default     = "DNS"
}

variable "zone_id" {
  description = "The zone id of the certificate"
  type        = string
}

variable "tags" {
  description = "Tags for the S3 Site"
  type        = map(string)
  default     = {}
}