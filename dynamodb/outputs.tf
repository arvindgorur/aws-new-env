output "table_id" {
  description = "The ID of the newly created DynamoDB table"
  value       = "${aws_dynamodb_table.this.id}"
}

output "table_arn" {
  description = "The arn of the newly created DynamoDB table"
  value       = "${aws_dynamodb_table.this.arn}"
}

output "hash_key" {
  description = "The hash key for the newly created DynamoDB table"
  value       = "${aws_dynamodb_table.this.hash_key}"
}
