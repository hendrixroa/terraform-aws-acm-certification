output "cert_arn" {
  sensitive = true
  value     = aws_acm_certificate.main.arn
}
