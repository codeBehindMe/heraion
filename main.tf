provider "google" {
  project = var.target_project
  region = var.default_region
  zone = var.default_zone
}

// Networking
resource "google_compute_network" "krl_network" {
  name = "krl-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "dev_network" {
  name = "dev-network"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.krl_network.self_link

  secondary_ip_range {
    ip_cidr_range = "172.16.0.0/24"
    range_name = ""
  }
}
