# https://developer.hashicorp.com/terraform/language/values/variables

# Although is not enforce, it is a good practice to place variables in a saparate file
# name "variables.tf"

# It is important to keep in mind that variables cannot have computed values

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
  # default     = "my-bucket"
}
