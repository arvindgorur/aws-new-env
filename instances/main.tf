resource "aws_instance" "instance" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"

  availability_zone = "${var.availability_zone}"

  network_interface {
    network_interface_id = "${var.nic_id}"
    device_index         = 0
  }

  tags {
    Name = "${var.name}"
  }
}
