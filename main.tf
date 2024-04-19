provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "example" {
  name      = "example"
  namespace = "default"
  chart     = "oci://us-central1-docker.pkg.dev/burner-athwatho/helm-poc/hello-world"
  version   = "0.1.0"
}


