provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}
resource "kubernetes_pod" "test" {
  metadata {
    name = "mypod"
  }

  spec {
    container {
      image = "vimal13/apache-webserver-php"
      name  = "example"

    }
  }
}
