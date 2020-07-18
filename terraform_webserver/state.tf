terraform {
  backend "s3" {
    bucket = "terraform-remote-state-mina"
    key    = "terraform-state-webserver.tfstate"
    region = "ap-southeast-2"
  }
}
