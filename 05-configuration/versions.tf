# The `terraform` block configures both terraform's binary and provider's
# versions restrictions and where the terraform state is/will be stored
terraform {
  required_version = ">= 1.6.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}

# Provider blocks allow setting provider's configuration
provider "aws" {
  region = "us-east-2"
}

# You can have more than one provider block, but the non-main
# ones must have an alias value, which can be whatever value you
# consider
provider "aws" {
  region = "eu-west-1"
  alias  = "ireland"
}

terraform {
  # Backend blocks allow configuring where and how the Terraform state
  # is stored, by default is localhost
  backend "local" {
    path = "./custom-name.tfstate"
  }
}
# Although backend blocks are actually part of the terraform block, it is 
# quite common to separate them for readability. All backend configurations are
# listed here: https://developer.hashicorp.com/terraform/language/settings/backends/configuration
# One of the most common ones is S3: https://developer.hashicorp.com/terraform/language/settings/backends/s3
