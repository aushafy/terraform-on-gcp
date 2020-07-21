// create a multi node google compute engine for salt-master
resource "google_compute_instance" "salt-master" {
  count        = 2 # the number of instances
  name         = "salt-master-${count.index}"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-a"
  description  = var.gce_description
  /* README!!! DISABLE SSH KEY Because gce needs google-ssh format! so regenerate another key
  metadata     = {
    ssh-keys  = "${var.gce_user_ssh}:${file(var.gce_public_key_ssh)}"
  }
  */

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  // make sure instance download and run automatically startup script for git action and salt master configuration
  metadata_startup_script = "sudo yum update -y; sudo yum install git salt salt-master -y; sudo git clone https://github.com/aushafy/salt-master-config.git; cd ./salt-master-config/; sudo bash ./run_config.sh;"

  network_interface {
    network = "default"
    access_config {
    }
  }
}