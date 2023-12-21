variable "project_name" {
  type        = string
  description = "name of the project"
  default     = "shopping"
}
variable "project_env" {
  type        = string
  description = "name of the enviorment"
  default     = "production"
}

variable "ami_id" {
  type        = string
  description = "source ami id"
  default     = "ami-02e94b011299ef128"
}

locals {
  image_timestamp = "${formatdate("YYYY-MM-DD-hhmm", timestamp())}"
  image_name      = "${var.project_name}- ${var.project_env}-${local.image_timestamp}"
}
