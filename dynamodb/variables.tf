variable "table_name" {
  description = "The name of the database table"
}

#variable "type" {
#  description = "The type of data being added to the table. One of (S)tring, (N)umber or (B)inary"
#}

variable "read_capacity" {
  description = "Read capacity"
}

variable "write_capacity" {
  description = "Write capacity"
}
