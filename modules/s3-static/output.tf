output "bucket_website_endpoint" {
  description = "The websites endpoint for the S3 Bucket"
  value       = aws_s3_bucket_website_configuration.static.website_endpoint
}

output "bucket_id" {
  description = "The ID of the S3 Bucket"
  value       = aws_s3_bucket.static.id
}

output "bucket_arn" {
  description = "The ARN of the S3 Bucket"
  value       = aws_s3_bucket.static.arn
}

output "bucket_name" {
  description = "The Name of the S3 Bucket"
  value       = aws_s3_bucket.static.bucket
}

output "object_url" {
  description = "Map of URL of Object"
  value       = { for key, value in aws_s3_object.website_files : key => value.website_redirect }
}