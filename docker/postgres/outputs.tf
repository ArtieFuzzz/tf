output "container_id" {
  description = "ID of the created Container"
  value       = resource.docker_container.container.id
}

output "image_id" {
  description = "ID of the image used for the Container"
  value = resource.docker_image.image.id
}