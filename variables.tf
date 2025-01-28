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

variable "file_key" {
  description = "The file key of the S3 bucket"
  type        = string
  default     = "index.html"
}