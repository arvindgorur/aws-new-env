variable "name" {}
variable "key_name" {}

resource "aws_instance" "instance" {
  ami           = "ami-a4dc46db"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"

  tags {
    Name = "${var.name}"
  }
}

output "public_ip" {
  value = "${aws_instance.instance.public_ip}"
}
