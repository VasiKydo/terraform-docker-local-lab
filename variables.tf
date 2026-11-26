variable "image_name" {
  description = "Name and tag for the custom Docker image"
  type        = string
  default     = "my-local-web:latest"
}

variable "container_name" {
  description = "Name of the running Docker container"
  type        = string
  default     = "my-web-container"
}

variable "external_port" {
  description = "Host port mapped to container port 80"
  type        = number
  default     = 8080
}