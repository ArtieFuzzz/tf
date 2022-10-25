resource "docker_image" "kong" {
  name         = "kong:alpine"
  keep_locally = true
}

resource "docker_container" "migrations" {
  name    = "kong-migrations"
  image   = docker_image.kong.image_id
  command = "kong migrations bootstrap"
}

resource "docker_container" "gateway" {
  name = "kong-gateway"
  image  = docker_image.kong.image_id 
}
# Add environment variables