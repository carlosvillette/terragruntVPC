provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "local" {
    path = "dev/vpc/terraform.tfstate"
  }
}

module "vpc" {
  source = "../../../modules/vpc"

  env = "dev"
  azs = [ "us_east-1a", "us-east-1b" ]
  private_subnets = [ "10.0.11.0/24", "10.0.12.0/24" ]
  public_subnets = [ "10.0.1.0/24", "10.0.2.0/24" ]

  private_subnets_tags = {
    region = aws.region
  }

  public_subnets_tags = {
    region = aws.region
  }
}