terraform {
  required_version = ">= 0.12.1"
}

provider "aws" {
  version = "~> 2.25"
  region  = var.aws_region

  assume_role {
    role_arn = var.aws_assume_role_arn
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source     = "git::https://github.com/cloudposse/terraform-aws-vpc.git?ref=tags/0.9.0"
  namespace  = var.namespace
  stage      = var.stage
  cidr_block = var.cidr_block
  name       = var.name
  tags       = var.tags
  attributes = var.attributes
}

module "dynamic_subnets" {
  source              = "git::https://github.com/cloudposse/terraform-aws-dynamic-subnets.git?ref=tags/0.19.0"
  namespace           = var.namespace
  stage               = var.stage
  availability_zones  = data.aws_availability_zones.available.names
  max_subnet_count    = var.max_subnet_count
  vpc_id              = module.vpc.vpc_id
  igw_id              = module.vpc.igw_id
  cidr_block          = var.cidr_block
  name                = var.name
  tags                = var.tags
  attributes          = var.attributes
  subnet_type_tag_key = "ZoneAvailability"
}
