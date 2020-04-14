resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = "default"
  //network = google_compute_network.default.name
  description = "firewall for income traffic"
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }
}