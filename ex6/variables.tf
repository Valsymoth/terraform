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
