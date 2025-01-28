provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "static" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "static" {
  bucket = aws_s3_bucket.static.id

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}

resource "aws_s3_bucket_acl" "static_bucket_acl" {
  bucket = aws_s3_bucket.static.id
  acl    = var.acl
}

resource "aws_s3_bucket_policy" "static" {
  bucket = aws_s3_bucket.static.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.static.arn}/*"
      }
    ]
  })

}

resource "aws_s3_object" "website_files" {
  for_each = fileset(var.file_path, "*")

  bucket = aws_s3_bucket.static.id
  key    = each.value
  source = "${var.file_path}/${each.value}"
  acl    = var.acl

  content_type = lookup({
    ".html" = "text/html",
    ".css"  = "text/css",
    ".js"   = "application/javascript",
    ".png"  = "image/png",
    ".jpg"  = "image/jpeg",
    ".jpeg" = "image/jpeg",
    ".gif"  = "image/gif",
    ".svg"  = "image/svg+xml",
    ".ico"  = "image/x-icon",
    ".json" = "application/json",
    ".xml"  = "application/xml",
    ".pdf"  = "application/pdf",
    ".txt"  = "text/plain"
  }, each.value, "application/octet-stream")

  etag = filemd5("${var.file_path}/${each.value}")


}