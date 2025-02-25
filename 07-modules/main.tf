
resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-name"

  tags = {
    Hello = "World"
  }
}
