    
variable "namespace" {
  type        = string
  description = "Namespace (e.g. `goci` or `cloudposse`)"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = string
  description = "Application or solution name (e.g. `app`)"
}

variable "cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The CIDR block to use for this VPC"
}

variable "tags" {
  description = "Additional tags to apply to all resources that use this label module"
  type        = map(string)
  default     = {}
}

variable "attributes" {
  type        = list(string)
  description = "Any extra attributes for naming these resources"
  default     = []
}

variable "cluster_name" {
  type        = string
  description = "The kubernetes cluster name"
}

variable "max_subnet_count" {
  default     = 3
  description = "Sets the maximum amount of subnets to deploy. 0 will deploy a subnet for every provided availablility zone (in `availability_zones` variable) within the region"
}

variable "aws_assume_role_arn" {
  type        = string
  default     = ""
  description = "Role to assume to get access to AWS"
}

variable "aws_region" {
  type        = string
  default     = ""
  description = "The AWS Region to create the VPC in. Defaults to the current region"
}
