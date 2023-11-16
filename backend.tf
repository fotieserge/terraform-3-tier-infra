terraform {
  backend "s3" {
    bucket = "lemerer-ad"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
    workspace_key_prefix  = "env"
  }
}
