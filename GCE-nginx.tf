// create a single node google compute engine
resource "google_compute_instance" "default" {
  name         = "nginx-1"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  // make sure instance download automatically
  metadata_startup_script = "sudo yum update -y; sudo yum install nginx -y; sudo systemctl enable nginx; sudo systemctl start nginx;"

  network_interface {
    network = "default"
    access_config {
    }
  }
}