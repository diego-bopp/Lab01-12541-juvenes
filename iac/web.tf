
resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = "chlab/api"

 ports {
    internal = "3000"
    external = var.api_port[terraform.workspace]
  }
}


resource "docker_container" "web" {
  name = "web-${terraform.workspace}"
  image = "chlab/web"


 ports {
    internal = "80"
    external = var.web_port[terraform.workspace]
  }
}