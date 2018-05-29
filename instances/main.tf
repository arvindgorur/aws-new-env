resource "aws_instance" "instance" {
  ami           = "ami-a4dc46db"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"

  tags {
    Name = "${var.name}"
  }
}
