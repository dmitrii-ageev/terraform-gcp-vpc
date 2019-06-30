resource "google_compute_router" "this" {
  name    = "${var.name}-router"
  network = "${google_compute_network.this.self_link}"
  region  = "${var.region}"
}

resource "google_compute_router_nat" "this" {
  name                   = "${var.name}-nat"
  router                 = "${google_compute_router.this.name}"
  nat_ip_allocate_option = "${ length(var.nat_ips) == 0 ? "AUTO_ONLY" : "MANUAL_ONLY"}"

  nat_ips = [
    "${var.nat_ips}",
  ]

  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  region                             = "${var.region}"
}
