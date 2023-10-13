resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my_bucket_name"

  tags = {
    "Hello" = "World!"
  }
}
