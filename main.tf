terraform {
  required_providers {
    docker = { #local name
      source  = "kreuzwerker/docker" #official provider
      version = "~> 3.0"
    }
  }
}

provider "docker" {} #enabling the docker provider with the above set-up

resource "docker_image" "web_app" { #"web_app" is the local name of the resource and is of a type "docker_image"
  name = "my-local-web:latest" #the name of the Image that will be created
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