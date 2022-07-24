variable "nsg_names" {
  description = "network security groups"
  type        = list(string)
  default     = ["appnsg", "webnsg", "dbnsg"]
}

//Define all other variables