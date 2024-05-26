terraform {

source = "../../../modules/vpc"
  
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {

  env = "dev"
  azs = [ "us-east-1a", "us-east-1b" ]
  private_subnets = [ "10.0.11.0/24", "10.0.12.0/24" ]
  public_subnets = [ "10.0.1.0/24", "10.0.2.0/24" ]

  private_subnets_tags = {
    region = "us-east-1"
  }

  public_subnets_tags = {
    region = "us-east-1"
  }
}