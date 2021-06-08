/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



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
