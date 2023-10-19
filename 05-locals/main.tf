# Locals work like "computed" variables, they are calculed on the fly and can depend 
# on any other resource, from variables to any other resource or module argument

# You can create any locals blocks you need, they are usually placed on top of the file
# where they are used

locals {
  bucket_name = "${var.bucket_name}-00000001"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = local.bucket_name
}

resource "aws_s3_object" "my_file" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "path/to/my/file.txt"
  source = "example.txt"
}
