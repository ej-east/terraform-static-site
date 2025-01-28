output "website_endpoint" {
  description = "S3 static website hosting endpoint"
  value       = module.s3_static.bucket_website_endpoint
}

output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = module.s3_static.bucket_name
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.s3_static.bucket_arn
}

output "bucket_id" {
  description = "ID of the S3 bucket"
  value       = module.s3_static.bucket_id
}