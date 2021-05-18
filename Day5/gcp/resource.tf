resource "google_compute_instance" "default" {
  name         = "os1"
  machine_type = "e2-medium"
  zone         = "us-east1-c"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}