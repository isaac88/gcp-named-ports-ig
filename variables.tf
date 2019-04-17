variable "instance_group" {
  description = "self_link of instance group to update"
  default     = ""
}

variable "instance_groups" {
  description = "Instance groups to update"
  type        = "list"
}

variable "name" {
  description = "name of the port"
}

variable "port" {
  description = "port number"
}

variable "num_igs" {
  description = "Number of instances groups."
}
