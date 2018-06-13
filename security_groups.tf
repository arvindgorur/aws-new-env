module "my_default_sg" {
  source              = "./security_groups"
  name                = "my_default_sg"
  description         = "Default custom security group"
  vpc_id              = "${var.default_vpc_id}"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp", "ssh-22-tcp", "http-3000-tcp", "http-9090-tcp"]
}

module "arvicorp_default_sg" {
  source              = "./security_groups"
  name                = "my_default_sg"
  description         = "Default custom security group"
  vpc_id              = "${module.new_vpc.vpc_id}"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp", "ssh-22-tcp", "http-3000-tcp"]
}
