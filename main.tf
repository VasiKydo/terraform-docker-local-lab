terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "web_app" {
  name = var.image_name
  build {
    context = "."
  }
}

resource "docker_container" "web_container" {
  name  = var.container_name
  image = docker_image.web_app.image_id
  ports {
    internal = 80
    external = var.external_port
  }
}