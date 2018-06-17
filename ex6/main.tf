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

