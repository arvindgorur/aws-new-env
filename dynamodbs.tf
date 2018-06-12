module "my_dynamodb_table" {
  source         = "./dynamodb"
  table_name     = "test_table"
  read_capacity  = 1
  write_capacity = 1
}
