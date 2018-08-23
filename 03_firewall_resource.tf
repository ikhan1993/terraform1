resource "google_compute_firewall" "default" {
	name = "${var.name}-firewall"
	network = "${var.network}"
	source_tags = ["${var.name}"]
	source_ranges = ["${var.ip_all}"]
	allow {
		protocol = "icmp"
	}

	allow {
		protocol = "tcp"
		ports = "${var.allowed_ports}"
	}
}
