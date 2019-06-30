output "ip_cidr_range" {
  description = "The IP address range that machines in this network are assigned to."
  value = "${google_compute_subnetwork.this.ip_cidr_range}"
}

output "network" {
  description = "The link to the network"
  value = "${google_compute_network.this.self_link}"
}

output "network_name" {
  description = "The name of the network"
  value = "${google_compute_network.this.name}"
}

output "subnetwork" {
  description = "The link to the subnetwork"
  value = "${google_compute_subnetwork.this.self_link}"
}

output "subnetwork_name" {
  description = "The subnetwork name"
  value = "${google_compute_subnetwork.this.name}"
}

output "subnetwork_region" {
  description = "The subnetwork region"
  value = "${google_compute_subnetwork.this.region}"
}

output "nat_name" {
  description = "The nat router name"
  value = "${google_compute_router_nat.this.name}"
}

output "nat_router" {
  description = "The link to the nat router"
  value = "${google_compute_router_nat.this.router}"
}

output "nat_ips" {
  description = "The list of links to egress NAT IPs"
  value = "${var.nat_ips}"
}
