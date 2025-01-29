variable "zone_id" {
  description = "The ID of the Route 53 Zone"
  type        = string
}

variable "record_name" {
  description = "The DNS record name"
  type = string
}

variable "alias_target" {
  description = "The DNS name of the alias target"
  type = string
}

variable "alias_id_zone" {
  description = "The zone ID of the alias target"
  type = string
}

variable "tags" {
  description = "Tags that apply to the Route53 record"
  type = map(string)
  default = {}
}