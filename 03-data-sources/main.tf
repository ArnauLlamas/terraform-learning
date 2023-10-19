# https://developer.hashicorp.com/terraform/language/data-sources

# Data sources allow to access resources argument out of Terraform control
# to interact with them.

# When reviewing their fields, make sure you check the "Data source" in documentation
# pages and not the usual "resource".

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_bucket

data "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket"
}

resource "aws_s3_object" "my_file" {
  bucket = data.aws_s3_bucket.my_bucket.bucket
  key    = "path/to/my/file.txt"
  source = "example.txt"
}
