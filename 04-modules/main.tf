# https://github.com/terraform-aws-modules/terraform-aws-s3-bucket
module "my_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  bucket = "my-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
}

resource "aws_s3_object" "my_file" {
  bucket = module.my_bucket.bucket
  key    = "path/to/my/file.txt"
  source = "example.txt"
}
