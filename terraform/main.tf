provider "google" {
  project = "PROJE_ID" 
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "mern-cluster"
  location = "us-central1-a"


  initial_node_count = 1
  node_config {
    machine_type = "e2-medium" 
  }
}