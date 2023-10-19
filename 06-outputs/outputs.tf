# https://developer.hashicorp.com/terraform/language/values/outputs

# Although is not enforce, it is a good practice to place variables in a saparate file
# name "outputs.tf"

# Outputs value can be computed

output "s3_bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "s3_bucket" {
  value = aws_s3_bucket.my_bucket
}
