## Subnetwork module for Google Cloud Platform

Creates and manages Subnetworks within a VPC on GCP

**Basic usage**

```hcl
module subnet-module {
  source = "git@github.com:GMafra/terraform-gcp-subnet.git"
  name = "tf-subnet"
  vpc = "tf-vpc"
  ip_cidr_range = "10.0.1.0/24"
}
```
It can also be used in conjunction with my VPC module to create VPC + Subnet

```hcl
module vpc-module {
  source = "git@github.com:GMafra/terraform-gcp-vpc.git"
  name   = "tf-vpc"
}

module subnet-module {
  source = "git@github.com:GMafra/terraform-gcp-subnet.git"
  name = "tf-subnet"
  vpc = "${module.vpc-module.name}"
  ip_cidr_range = "10.0.1.0/24"
}
```
## Variables
|Name|Description|Type|Default|Required|
|----|-----------|:----:|:-------:|:--------:|
|name|Subnet name|String| - |Yes|
|vpc|VPC to link the subnet to|String| - |Yes|
|subnet-region|Zone associated with the subnet. Defaults to the region configured in the provider|String| - |No|
|ip_cidr_range|IP range address - format 0.0.0.0/0|String| - |Yes|

## Outputs

|Name|Description|
|----|-----------|
|name|Subnetwork name|
|gateway_address|The IP address of the gateway|
|self_link|The URI of the created resource|
|ip_cidr_range|The IP address range that machines in this network are assigned to, represented as a CIDR block

### Reference
- [Terraform GCP Subnetwork](https://www.terraform.io/docs/providers/google/d/datasource_compute_subnetwork.html)
- [Terraform Modules](https://www.terraform.io/docs/modules/usage.html)
- [Terraform Interpolation](https://www.terraform.io/docs/configuration/interpolation.html)
