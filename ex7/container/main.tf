# Start the container
resource "docker_container" "container_id" {
 name = "${var.container_name}"
 image = "${var.image}"
 ports {
  internal = "${var.container_internal_port}"
  external = "${var.container_external_port}"
}
}
