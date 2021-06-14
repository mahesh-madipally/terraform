


variable "project_id" {
  description = "The GCP project to use for integration tests"
  type        = string
  default     = "db-sample-314713"
}


variable "zone" {
  description = "The GCP zone to create resources in"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The machine_type to the compute instances in"
  default     = "f1-micro" 
}

variable "instance_name" {
  description = "Name of instance"
  default     = "db-sample-vm" 
}

variable "image" {
  description = "VM image"
  default     = "debian-cloud/debian-9"
}
