variable "vpc_id" {
  description = "Required : The VPC ID to launch in."
  type        = string
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Optional : A map of tags to assign to the resource."
  default     = {}
}

variable "bucket_name" {
  description = "Required : The S3 bucket hosting the static webpages"
  type        = string
  default     = null
}