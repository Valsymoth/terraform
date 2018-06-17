# Download the latest Ghost image
module "image" {
 source = "./image/"
 image = "${var.image}"
}

module "container" {
 source = "./container"
 image = "${module.image.image_out}"
 container_name = "${var.container_name}" 
 container_internal_port = "${var.container_internal_port}"
 container_external_port = "${var.container_external_port}"
}

