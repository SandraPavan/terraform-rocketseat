variable "origin_id" {
  type        = string
  default     = ""
  description = "Id do S3"
}

variable "domain_name" {
  type        = string
  default     = ""
  description = "Nome do dominio do S3"
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "Classe de preço do CDN"
}

variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Tags de criação"
}


