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