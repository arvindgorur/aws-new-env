resource "aws_network_interface" "this" {
  subnet_id       = "${var.subnet_id}"
  security_groups = ["${var.security_groups}"]
  private_ips     = ["${var.private_ips}"]

  tags {
    Name = "${var.name}"
  }
}
