data "aws_vpc" "mcking_vpc" {
  filter {
    name   = "tag:Name"
    values = ["mcking-vpc"]
  }
}

data "aws_subnet" "privada_1" {
  filter {
    name   = "tag:Name"
    values = ["mcking-subnet-privada-1"]
  }
}

data "aws_subnet" "privada_2" {
  filter {
    name   = "tag:Name"
    values = ["mcking-subnet-privada-2"]
  }
}

locals {
  subnet_privadas_ids = [
    data.aws_subnet.privada_1.id,
    data.aws_subnet.privada_2.id
  ]
}

data "aws_security_group" "mcking_security_group" {
  filter {
    name   = "group-name"
    values = ["mcking-security-group"]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.mcking_vpc.id]
  }
}
