# Specify the GCP Provider
provider "vault" {
  token_name = "terraform"
}

data "vault_generic_secret" "gcp_credentials"{
  path = "kv/GCP/Creds/db/"
}

provider "google" {
  credentials = data.vault_generic_secret.gcp_credentials.data_json
  project     = var.project_id
}

# Create a GKE cluster
resource "google_container_cluster" "gke-terraform" {
  name               = var.cluster_name
  location           = var.region
  initial_node_count = 1

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
     ]   
  }
}
