module "aws_db" {
  source = "./module/aws_db"

  vpc_id              = data.aws_vpc.mcking_vpc.id
  subnet_ids           = local.subnet_privadas_ids
  security_group_id    = data.aws_security_group.mcking_security_group.id
}