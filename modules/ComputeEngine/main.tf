
provider "google" {
  credentials = file("playground-s-11-792d28f4-dc98cd20794b.json")
  version     = "~> 3.0.0-beta.1"
  project     = "playground-s-11-792d28f4"
  region      = "US"
}
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

}
