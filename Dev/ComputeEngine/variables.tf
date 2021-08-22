variable "project_id" {
  type        = string
  description = "The project ID to manage the compute resources."
}

// required
variable "vm_name" {
  type        = string
  description = "The display name of compute instance."
}

// required
variable "machine_type" {
  type        = string
  description = "The machine type to create."
}


variable "zone" {
  type        = string
  description = "The zone that the machine should be created in, it should be something like: `us-central1-a`, `us-east1-c`."
}
// required
variable "image" {
  description = "The image from which to initialize this disk."
  type        = string
}
/*
variable "interface" {
  description = "The disk interface to use for attaching this disk; either SCSI or NVME."
  type        = string
}
*/

// required
variable "network" {
  description = "The name or self_link of the network to attach this interface to."
  type        = string
}

variable "sub_network" {
  description = "The name or self_link of the subnetwork to attach this interface to"
  type        = string
}
