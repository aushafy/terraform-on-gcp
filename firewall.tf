resource "google_compute_firewall" "default" {
  name    = "dev-salt-firewall"
  network = "default"
  description = "firewall for income traffic of saltstack"
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "22"]
  }
}