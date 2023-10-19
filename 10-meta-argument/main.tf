# https://developer.hashicorp.com/terraform/language/resources (Meta-Arguments bullet point)

# Although there are more meta-arguments than the ones exposed here, these are the most common
# and easy to use and understand. It is recommended to understand well all other meta-arguments
# before introducing them into production systems

provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "northvirginia"
}

# --------------------------------------

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-in-euw1"
}

resource "aws_s3_bucket" "my_bucket_in_us1" {
  provider = aws.northvirginia

  bucket = "my-bucket-in-use1"
}

# --------------------------------------

resource "aws_s3_bucket" "my_bucket_loop" {
  for_each = toset(["abc", "def", "ghi"])

  bucket = "my-bucket-${each.value}"
}
