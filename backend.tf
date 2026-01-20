terraform {
  backend "s3" {
    bucket         = "terraform-state-poc25-us-east-1"
    key            = "poc25/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
