provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "null_resource" "helm_login" {
  provisioner "local-exec" {
    command = "gcloud auth print-access-token | helm registry login -u oauth2accesstoken --password-stdin https://us-central1-docker.pkg.dev"
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}

resource "helm_release" "example" {
  name      = "example"
  namespace = "default"
  chart     = "oci://us-central1-docker.pkg.dev/burner-athwatho/helm-poc/hello-world"
  version   = "0.1.0"
 depends_on = [
    null_resource.helm_login
  ]
}


