# Modules are one or more resources behind an abstraction layer, all of the resources
# are managed within a single "module" block.

# You can create all module blocks you want, the only required parameter is the "source"
# one, as it defines the "location" of this module. Any required arguments of the module
# should be specified in its documentation

# This example specifies a local module existing in the same directory as the main.tf file

module "my_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket = "my-bucket"
}

resource "aws_s3_object" "my_file" {
  bucket = module.my_bucket.bucket_name
  key    = "path/to/my/file.txt"
  source = "example.txt"
}
