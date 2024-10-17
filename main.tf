module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "6.1.0"

  project_id      = var.project_id
  names           = [var.bucket_name]
  prefix          = var.prefix
  location        = var.location
  storage_class   = var.storage_class
  lifecycle_rules = var.lifecycle_rules
}