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
  name = "my-local-web:latest"
  build {
    context = "."
  }
}

resource "docker_container" "web_container" {
  name  = "my-web-container"
  image = docker_image.web_app.image_id
  ports {
    internal = 80
    external = 8080
  }
}