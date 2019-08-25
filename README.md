TERRAFORM GCP VPC MODULE
========================

Terraform module : GCP : This module creates a VPC network that provides connectivity for your Compute Engine virtual
machine (VM) instances, Kubernetes Engine clusters, App Engine Flex instances, and other resources in your project.


Module Input Variables
----------------------

| Parameter | Description | Default |
| :-------- | :---------- | :------ |
| `name` | The VPC name | _mandatory_ |
| `region` | The region where VPC should be placed | _mandatory_ |
| `ip_cidr_range` | The IP address range that machines in this network are assigned to, represented as a CIDR block. | _mandatory_ |
| `nat_ips` | Specify the egress NAT IP address resources (Optional, Auto allocate IP if not specifed) | `[]` |


Usage
-----

```hcl
module "vpc" {
 source = "git::git@github.com:dmitrii-ageev/terraform-gcp-vpc?ref=2.0.0"

 name = "my_network"
 region = "us-east1"
 ip_cidr_range = "172.16.0.0/12"
}
```


Module Output Variables
-----------------------

| Parameter | Description |
| :-------- | :---------- |
| `ip_cidr_range` | The IP address range that machines in this network are assigned to. |
| `network` | The link to the network |
| `network_name` | The name of the network |
| `subnet` | The link to the subnet |
| `subnet_name` | The subnet name |
| `subnet_region` | The subnet region |
| `nat_name` | The nat router name |
| `nat_router` | The link to the nat router |
| `nat_ips` | The list of links to egress NAT IPs |


Changelog
---------

* `2.0.0`  - Change the code to support Terraform 0.12


Author
------

Dmitrii Ageev <d.ageev@gmail.com>

