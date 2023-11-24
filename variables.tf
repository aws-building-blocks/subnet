variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "subnets" {
  type = list(object({
    name                                = string
    vpc_id                              = string
    cidr_block                          = string
    availability_zone                   = optional(string)
    map_public_ip_on_launch             = optional(bool, true)
    private_dns_hostname_type_on_launch = optional(string, "resource-name")
    is_public                           = optional(bool, true)
    route_table_id                      = string
    tags                                = map(string)
  }))
}
