resource "google_compute_network" "this" {
  name = "${var.name}-network"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "this" {
  name = "${var.name}-subnetwork"
  ip_cidr_range = "${var.ip_cidr_range}"
  network = "${google_compute_network.this.self_link}"
  region = "${var.region}"
  enable_flow_logs = true
  private_ip_google_access = true
}
