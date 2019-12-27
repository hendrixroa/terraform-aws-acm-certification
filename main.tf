/*
@doc()
# ACM Certification
Module prebuilt for automate the ACM Certification adding automatically the DNS Records into Route 53.

- Terraform version:  `0.12.+` 

## How to use?

*/
resource "aws_acm_certificate" "main" {
  domain_name       = var.domain
  validation_method = "DNS"
}

resource "aws_acm_certificate_validation" "main" {
  certificate_arn         = aws_acm_certificate.main.arn
  validation_record_fqdns = [aws_route53_record.main.fqdn]
}

resource "aws_route53_record" "main" {
  name    = aws_acm_certificate.main.domain_validation_options.0.resource_record_name
  type    = aws_acm_certificate.main.domain_validation_options.0.resource_record_type
  zone_id = var.route53_zone
  records = [aws_acm_certificate.main.domain_validation_options.0.resource_record_value]
  ttl     = 60
}
