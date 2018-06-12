module "new_vpc" {
  source     = "./vpcs"
  cidr_block = "192.168.0.0/16"
  vpc_name   = "ArviCorp"
}
