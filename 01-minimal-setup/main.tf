# As long as credentials are in your environment, Terraform will try to gather them. 
# More details here: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration.

# Just run `terraform init`, `terraform plan` and `terraform apply` to create an S3 bucket!

# Arguments required for every resource are specified in AWS Terraform Provider
# documentation. https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-bucket"

  tags = {
    "Hello" = "World"
  }
}
