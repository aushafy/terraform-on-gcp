// A variable for output of the external ip of the instances

output "ip_salt_master-1" {
    value = google_compute_instance.salt-master[0].network_interface.0.access_config.0.nat_ip
}

output "ip_salt_master-2" {
    value = google_compute_instance.salt-master[1].network_interface.0.access_config.0.nat_ip
}

output "ip_salt_minion" {
    value = google_compute_instance.salt-minion[0].network_interface.0.access_config.0.nat_ip
}