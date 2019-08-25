variable "name" {
  description = "The VPC name"
}

variable "region" {
  description = "The region of the VPC"
}

variable "ip_cidr_range" {
  description = "The IP address range that machines in this network are assigned to, represented as a CIDR block."
}

variable "nat_ips" {
  description = "Specify the egress NAT IP address resources (Optional, Auto allocate IP if not specifed)"
  type        = list(string)
  default     = []
}

