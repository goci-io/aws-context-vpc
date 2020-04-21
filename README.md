# aws-kubernetes-vpc

#### Maintained by [@goci-io/prp-terraform](https://github.com/orgs/goci-io/teams/prp-terraform)

This terraform module combines [cloudposse/terraform-aws-vpc](https://github.com/cloudposse/terraform-aws-vpc) and [cloudposse/terraform-aws-dynamic-subnets](https://github.com/cloudposse/terraform-aws-dynamic-subnets) to provision a new AWS VPC with public and private subnets for use with kubernetes.

In addition it reads the current available AWS information as Terraform DataSource and uses some more available variables in the current context and adds required tags to VPC and subnets for kubernetes.

## Usage

```hcl
module "vpc" {
  source           = "git::https://github.com/goci-io/aws-kubernetes-vpc.git?ref=tags/<latest-version>"
  namespace        = "goci"
  stage            = "staging"
  name             = "main"
  cidr_block       = "10.0.0.0/16"
  max_subnet_count = 3
}
```
