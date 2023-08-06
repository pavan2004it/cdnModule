output "cdn_dns" {
  value = aws_cloudfront_distribution.products_api.domain_name
}

output "cdn_zone" {
  value = aws_cloudfront_distribution.products_api.hosted_zone_id
}