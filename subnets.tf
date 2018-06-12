module "subnet_dmz" {
  source            = "./vpc_subnets"
  vpc_id            = "${module.new_vpc.vpc_id}"
  cidr_block        = "192.168.1.0/24"
  availability_zone = "ca-central-1a"
  subnet_name       = "DMZ"
}

module "internal_1" {
  source            = "./vpc_subnets"
  vpc_id            = "${module.new_vpc.vpc_id}"
  cidr_block        = "192.168.2.0/24"
  availability_zone = "ca-central-1a"
  subnet_name       = "Internal-1"
}

module "internal_2" {
  source            = "./vpc_subnets"
  vpc_id            = "${module.new_vpc.vpc_id}"
  cidr_block        = "192.168.3.0/24"
  availability_zone = "ca-central-1b"
  subnet_name       = "Internal-2"
}
