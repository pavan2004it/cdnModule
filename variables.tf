variable "alb_dns_name" {
  type = string
}

variable "cdn_aliases" {
  type = list(string)
}

variable "acm_cert_arn" {
  type = string
}

variable "origin_name" {
  type = string
}

variable "cdn_env" {
  type = string
}

variable "connection_timeout" {
  type = number
}

variable "connection_attempts" {
  type = number
}

variable "keepalive_timeout" {
  type = number
}

variable "response_timeout" {
  type = number
}

variable "headers" {
  type = list(string)
}

variable "ttl_values" {
  type = map(object({
    min_ttl                 = number
    default_ttl            = number
    max_ttl                = number
  }))
}

variable "env" {
  type = string
}