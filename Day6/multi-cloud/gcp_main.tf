resource "google_compute_instance" "default" {
  name         = "os1"
  machine_type = var.mtype
  zone         = "us-east1-c"
  count = var.istest ? 1 : 0
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}