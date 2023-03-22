variable "environment" {
  type        = string
  default     = "staging"
  description = "The environment to provision the resources in"
}

variable "region" {
  type        = string
  description = "AWS region to host the network"
}
