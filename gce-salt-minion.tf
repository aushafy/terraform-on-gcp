// create a single node google compute engine for salt-master
resource "google_compute_instance" "salt-minion" {
  count        = 1 # the number of instances
  name         = "salt-minion-${count.index}"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-b"
  description  = var.gce_description

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}