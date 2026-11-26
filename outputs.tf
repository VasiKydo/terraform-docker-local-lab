output "local_url" {
  description = "URL to access the NGINX page locally"
  value       = "http://localhost:${var.external_port}"
}

output "container_name" {
  description = "Name of the created Docker container"
  value       = docker_container.web_container.name
}