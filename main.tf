terraform {
  required_providers {
    google = {
     source  = "hashicorp/google"
      version = "~> 4.48.0"
    }
  }
}

provider "google" {
  project = "burner-athwatho"
}

resource "google_storage_bucket" "example_bucket" {
  name          = "my-terraform-cloud-test-bucket-3990"
  location = "us-central1"
  storage_class = "STANDARD"
}
