module "new_vpc" {
  source     = "./vpcs"
  cidr_block = "192.168.0.0/24"
  vpc_name   = "ArviCorp"
}
