    
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
