# https://developer.hashicorp.com/terraform/language/functions

# Functions in terraform work just like built-in functions in any other language.
# Refer to the documentation to know all built-in functions and how they work!

resource "aws_s3_bucket" "my_bucket" {
  bucket = trim("-_-my-bucket-_-", "-_-")
}
