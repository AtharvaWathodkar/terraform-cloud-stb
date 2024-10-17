variables {
  project_id = "test-project"
  bucket_name = "test-bucket26362873827"
  prefix = "tftest"
  location = "US"
  storage_class = "STANDARD"
  # versioning = true
  lifecycle_rules = [
    {
      action = {
        type = "Delete"
      }
      condition = {
        age = 365
        with_state = "ANY"
      }
    }
  ]
}

run "create_bucket" {
#command = plan

  assert {
    condition     = length(module.gcs_buckets.buckets) == 1
    error_message = "Expected to create 1 bucket, but didn't"
  }

  assert {
    condition     = module.gcs_buckets.buckets[0].name == "tftest-test-bucket"
    error_message = "Bucket name does not match expected value"
  }

  assert {
    condition     = module.gcs_buckets.buckets[0].location == "US"
    error_message = "Bucket location is not set to US"
  }

  assert {
    condition     = module.gcs_buckets.buckets[0].storage_class == "STANDARD"
    error_message = "Bucket storage class is not set to STANDARD"
  }

  assert {
    condition     = length(module.gcs_buckets.buckets[0].lifecycle_rule) == 1
    error_message = "Expected 1 lifecycle rule, but didn't find it"
  }
}