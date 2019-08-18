
output "vpc_id" {
    value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
    value = module.vpc.vpc_cidr_block
}

output "vpc_ipv6_cidr_block" {
    value = module.vpc.ipv6_cidr_block
}

output "public_subnet_ids" {
  value = module.dynamic_subnets.public_subnet_ids
}

output "public_subnet_cidrs" {
  value = module.dynamic_subnets.public_subnet_cidrs
}

output "private_subnet_ids" {
  value = module.dynamic_subnets.private_subnet_ids
}

output "private_subnet_cidrs" {
  value = module.dynamic_subnets.private_subnet_cidrs
}

output "availability_zones" {
  value = module.dynamic_subnets.availability_zones
}
