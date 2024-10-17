terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  access_token = "ya29.a0AcM612zzkgPHznJWw4KBSBi0p1_Z5h_lx7bFV7mjtqlO7yrZ7cXxMcUjp3uSWKRHuxLHoFo94lhOhTOCrY2xdwJmiWkPurhV4iE0baT7t8pQJkjjxIbC9FxkDe4DzoTXBKZcHB_ljKw-Uusu3XH5DuT45wsWGqHQRuYdvQHV6_uLmwaCgYKAdYSARMSFQHGX2MiIkO5MjNB3uLWM8mka9xY3A0181"
}