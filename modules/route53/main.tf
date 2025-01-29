resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.record_name
  type    = "A"

  alias {
    name                   = var.alias_target
    zone_id                = var.alias_id_zone
    evaluate_target_health = true
  }

  ttl     = 300
  records = []
}

