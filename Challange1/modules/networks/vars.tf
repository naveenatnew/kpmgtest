variable "subnet_names" {
  description = "subnets"
  type        = list(string)
  default     = ["appsubnet", "websubnet"]
}
