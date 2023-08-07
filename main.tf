resource "aws_cloudfront_distribution" "products_api" {
  origin {
    domain_name              = var.alb_dns_name
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
    custom_header {
      name  = "X-Custom-Header"
      value = "random-value-123456"
    }
    origin_id = "ringgitpay.uat"
    origin_shield {
      enabled              = true
      origin_shield_region = "ap-southeast-1"
    }
  }

  enabled             = true
  comment             = "RinggitPay API CDN"


  aliases = var.cdn_aliases

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "ringgitpay.uat"

    forwarded_values {
      query_string = true
      headers = ["*"]

      cookies {
        forward = "all"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }




  price_class = "PriceClass_200"


  tags = {
    Environment = "uat"
  }

  viewer_certificate {
    acm_certificate_arn = var.acm_cert_arn
    ssl_support_method = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }
}