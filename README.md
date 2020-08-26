# ACM Certification

Module prebuilt for automate the ACM Certification adding automatically the DNS Records into Route 53.

- Terraform versions:  `0.13.+` and `0.12`

## How to use

```hcl
# Using terrform version >= 0.13 

module "acm-myorganization" {
  source       = "hendrixroa/acm-certification/aws"
  domain       = "your.domain.com"
  route53_zone = "your zone id"
}
```


```hcl
# Using terraform 0.12 version

module "acm-myorganization" {
  source       = "hendrixroa/acm-certification/aws"
  version      = "~> 0.12.0"
  
  domain       = "your.domain.com"
  route53_zone = "your zone id"
}
```

- Route 53 zone ID, from [Route53 zone](https://www.terraform.io/docs/providers/aws/r/route53_zone.html)
