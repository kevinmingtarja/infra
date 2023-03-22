locals {
    tags = {
        managed_by = "Terraform"
    }

    root_domain = "kevinmingtarja.com"
}

resource "aws_route53_zone" "root" {
  name = local.root_domain
}

resource "aws_route53_record" "root" {
  zone_id = aws_route53_zone.root.zone_id
  name    = local.root_domain
  type    = "A"
  ttl     = 60
  records = ["76.76.21.21"]
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.root.zone_id
  name    = "www.${local.root_domain}"
  type    = "CNAME"
  ttl     = 60
  records = ["cname.vercel-dns.com"]
}
