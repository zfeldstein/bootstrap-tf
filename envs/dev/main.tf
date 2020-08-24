terraform {
  backend "s3" {
    bucket = "tf-remote-state20200824150411309800000002"
    key    = "dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf-remote-state-lock"
    kms_key_id = "45ca0aa9-446b-4ec2-af19-4e14492301e8"
  }
}


provider "aws" {
  region = "us-east-1"

}
