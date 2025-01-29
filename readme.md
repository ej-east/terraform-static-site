# 🚀 AWS S3 Static Website with CloudFront CDN

This Terraform project sets up a secure, scalable static website hosting infrastructure on AWS using S3, CloudFront CDN, ACM for SSL/TLS, and Route53 for DNS management.

## 🏗️ Architecture

- 📦 **S3 Bucket**: Hosts the static website content
- 🌐 **CloudFront**: CDN for content delivery with edge locations
- 🔒 **ACM**: SSL/TLS certificate management
- 🌍 **Route53**: DNS management and routing

## 📋 Prerequisites

- AWS Account
- Terraform installed (version compatible with AWS provider ~> 5.0.0)
- Domain name registered in Route53
- AWS CLI configured with appropriate credentials

## 🛠️ Configuration

1. Create a `terraform.tfvars` file with your values:

```hcl
region         = "us-east-1"
bucket_name    = "your-bucket-name"
domain_name    = "your-domain.com"
zone_id        = "your-route53-zone-id"
acl            = "private"
index_document = "index.html"
```

2. Initialize Terraform:
```bash
terraform init
```

3. Review the plan:
```bash
terraform plan
```

4. Apply the configuration:
```bash
terraform apply
```

## 📁 Project Structure

```
.
├── main.tf           # Main Terraform configuration
├── variables.tf      # Variable definitions
├── outputs.tf        # Output definitions
├── terraform.tfvars  # Variable values
└── modules/         # Modular components
    ├── s3-static/   # S3 bucket configuration
    ├── acm/         # Certificate management
    ├── cdn/         # CloudFront distribution
    └── route53/     # DNS configuration
```

## 🔧 Available Variables

| Variable | Description | Default |
|----------|-------------|---------|
| region | AWS region | us-east-1 |
| bucket_name | S3 bucket name | - |
| file_path | Path to website files | "uploads" |
| acl | Bucket ACL | - |
| index_document | Default index document | - |
| domain_name | Website domain name | - |
| validation_method | ACM validation method | "DNS" |
| zone_id | Route53 zone ID | - |
| tags | Resource tags | {} |

## 🚀 Features

- ✨ Automated SSL/TLS certificate provisioning
- 🔐 Secure S3 bucket configuration
- 🌐 Global content delivery through CloudFront
- 🔄 DNS management with Route53
- 📱 Mobile-friendly setup

## ⚠️ Important Notes

- Ensure your domain is registered in Route53 before applying
- CloudFront distribution creation may take up to 30 minutes
- Certificate validation requires DNS validation method setup

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📝 License

This project is open-source and available under the MIT License.