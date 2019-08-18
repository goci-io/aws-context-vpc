# aws-context-vpc

This terraform module combines [cloudposse/terraform-aws-vpc](https://github.com/cloudposse/terraform-aws-vpc) and [cloudposse/terraform-aws-dynamic-subnets](https://github.com/cloudposse/terraform-aws-dynamic-subnets) to provision a new AWS VPC.

In addition it reads the current available AWS information as Terraform DataSource and uses some more available variables in the current context.
