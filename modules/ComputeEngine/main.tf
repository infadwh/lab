
resource "google_compute_instance" "default" {
  provider     = google-beta
  project      = var.project_id
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone


  boot_disk {
    initialize_params {
      image = var.image 
    }
  }

  /*// Local SSD disk
  scratch_disk {
    interface = var.interface
  }*/

  network_interface {
    network     = var.network
    subnetwork =  var.sub_network
  }

}
