# https://github.com/terraform-aws-modules/terraform-aws-s3-bucket

# Modules are one or more resources behind an abstraction layer, all of the resources
# are managed within a single "module" block.

# You can create all module blocks you want, the only required parameter is the "source"
# one, as it defines the "location" of this module. Any required arguments of the module
# should be specified in its documentation

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
  bucket = module.my_bucket.s3_bucket_id
  key    = "path/to/my/file.txt"
  source = "example.txt"
}
