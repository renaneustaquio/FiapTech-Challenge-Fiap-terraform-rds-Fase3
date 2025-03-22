variable "db_name" {
  type    = string
  default = "mc_king"
}

variable "username" {
  type    = string
  default = "postgres"
}

variable "vpc_id" {
  description = "ID da vpc"
  type        = string
}


variable "security_group_id" {
  description = "ID do security group da vpc"
  type        = any
}

variable "subnet_ids" {
  description = "IDs das subnets"
  type        = list(string)
}