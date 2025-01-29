variable "domain_name" {
  description = "The domain name of the ACM certificate"
  type        = string
}

variable "validation_method" {
  description = "The validation method of the ACM certificate"
  type        = string
  default     = "DNS"
}

variable "zone_id" {
  description = "The zone id of the ACM certificate"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}