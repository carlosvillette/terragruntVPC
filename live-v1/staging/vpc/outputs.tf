output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet.ids
}

output "public_subnets_ids" {
  value = module.vpc.public_subnet.ids
}