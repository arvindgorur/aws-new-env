resource "aws_dynamodb_table" "this" {
  name           = "${var.table_name}"
  read_capacity  = "${var.read_capacity}"
  write_capacity = "${var.write_capacity}"
  hash_key       = "id"
  range_key      = "name"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "name"
    type = "S"
  }
}
