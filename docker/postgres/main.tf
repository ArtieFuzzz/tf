provider "docker" {
  host = "unix://var/run/docker.sock" # This will only work with Linux
  # host = "npine:////.//pipe//docker_engine" # This will only work with Windows
}

resource "docker_image" "image" {
  name         = "postgres:bullseye" # Bullseye also points to the latest version
  keep_locally = true # This so we don't have to pull it every other time
}

resource "docker_container" "container" {
  image = docker_image.image.image_id
  name  = var.cotainer_name
}
