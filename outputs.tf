output "ip_cidr_range" {
  value = "${google_compute_subnetwork.this.ip_cidr_range}"
}

output "network" {
  value = "${google_compute_network.this.self_link}"
}

output "network_name" {
  value = "${google_compute_network.this.name}"
}

output "subnet" {
  value = "${google_compute_subnetwork.this.self_link}"
}

output "subnet_name" {
  value = "${google_compute_subnetwork.this.name}"
}

output "subnet_region" {
  value = "${google_compute_subnetwork.this.region}"
}

output "nat_name" {
  value = "${google_compute_router_nat.this.name}"
}

output "nat_router" {
  value = "${google_compute_router_nat.this.router}"
}

output "nat_ips" {
  value = "${google_compute_router_nat.this.nat_ips}"
}
