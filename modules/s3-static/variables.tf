variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "The region of the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "file_path" {
  description = "The file path of the S3 bucket"
  type        = string
  default     = "uploads"
}

variable "index_document" {
  description = "Index document for static S3 site"
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "Error document for static S3 site"
  type        = string
  default     = "error.html"
}

variable "acl" {
  description = "ACL for static S3 site"
  type        = string
  default     = "public-read"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}