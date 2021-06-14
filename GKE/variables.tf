variable "project_id" {
  description = "Google Project ID."
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-west1-a"
}

variable "machine_type" {
  description = "Google VM Instance type."
  type        = string
}

variable "cluster_name" {
  description = "Google cluster_name."
  type        = string
}
