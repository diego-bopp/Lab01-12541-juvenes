
resource "docker_container" "api" {
  name  = "foo"
  image = docker_image.ubuntu.image_id
}


resource "docker_image" "api" {
  name = "api-dev"
  imagen = "chlab/api"

 ports {
    internal = "3000"
    external = "4001"
  }
}
}