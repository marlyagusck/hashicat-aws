terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jokian"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
