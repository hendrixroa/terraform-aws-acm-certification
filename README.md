# ACM Certification

Module prebuilt for automate the ACM Certification adding automatically the DNS Records into Route 53.

- Terraform version:  `0.12.+`

## How to use

```hcl

module "acm-myorganization" {
  source       = "hendrixroa/acm-certification/aws"
  domain       = "your.domain.com"
  route53_zone = "your zone id"
}
```

- Route 53 zone ID, from [Route53 zone](https://www.terraform.io/docs/providers/aws/r/route53_zone.html)
