resource "aws_internet_gateway" "arvicorp_igw" {
  vpc_id = "${module.new_vpc.vpc_id}"

  tags {
    Name = "ArviCorp IGW"
  }
}
