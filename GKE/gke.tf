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
resource "google_container_cluster" "my_k8s_cluster" {
  name               = var.cluster_name
  location           = var.region
  initial_node_count = 2


  # Enable Workload Identity
  workload_identity_config {
    identity_namespace = "${var.project_id}.svc.id.goog"
  }

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
    
  }
}
