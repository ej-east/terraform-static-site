output "bucket_website_endpoint" {
  description = "The websites endpoint for the S3 Bucket"
  value       = aws_s3_bucket.static.website_endpoint
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
  description = "URL of Object"
  value       = aws_s3_object.website_files.website_redirect
}