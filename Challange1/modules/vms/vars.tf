variable "ni_names" {
  description = "network interface names"
  type        = list(string)
  default     = ["appni", "webni"]
}

variable "vm_names" {
  description = "vm names"
  type        = list(string)
  default     = ["appvm", "webvm"]
}

// Difine all other variables
