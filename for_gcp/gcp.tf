// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "white-welder-144805"
  region      = "us-central1"
}

// Create a new instance
resource "google_compute_instance" "default" {
  name         = "default-gcp"
  zone         = "us-central1-f"
  machine_type = "n1-standard-1"

  disk {
    image = "debian-cloud/debian-8"
  }

  // Local SSD disk
  disk {
    type    = "local-ssd"
    scratch = true
  }
  
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  // ...
}
