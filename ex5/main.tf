variable "image" {
 description = "image for container"
 default = "ghost:latest"
}

variable "container_name" {
 default = "blog"
}

variable "container_internal_port" {
 default = "2368"
}


variable "container_external_port" {
 default = "80"
}


# Download the latest Ghost image

resource "docker_image" "image_id" {
 name = "${var.image}"
}

resource "docker_container" "container_id" {
 name = "${var.container_name}"
 image = "${docker_image.image_id.latest}"
 ports { 
  internal = "${var.container_internal_port}"
  external = "${var.container_external_port}" 
}
}

# Output name and IP address
output "IP Address" {
 value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
 value = "${docker_container.container_id.name}"
}

