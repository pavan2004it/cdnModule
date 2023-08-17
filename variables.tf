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