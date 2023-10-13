# locals {
#   bucket_name = "${var.bucket_name}-00000001"
# }

# resource "aws_s3_bucket" "my_bucket" {
#   bucket = local.bucket_name
# }

# resource "aws_s3_object" "my_file" {
#   bucket = aws_s3_bucket.my_bucket.bucket
#   key    = "path/to/my/file.txt"
#   source = "example.txt"
# }
