variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "burner-athwatho"
}

variable "bucket_name" {
  description = "The name of the bucket to create."
  type        = string
}

variable "prefix" {
  description = "Prefix used to generate the bucket name."
  type        = string
  default     = "test"
}

variable "location" {
  description = "The location of the bucket."
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "The Storage Class of the new bucket."
  type        = string
  default     = "STANDARD"
}

variable "versioning" {
  description = "Whether to enable versioning for the bucket."
  type        = bool
  default     = true
}

variable "lifecycle_rules" {
  description = "The bucket's Lifecycle Rules configuration."
  type = list(object({
    action    = any
    condition = any
  }))
  default = []
}