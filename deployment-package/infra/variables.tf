variable "region" {
  description = "Default region to be used"
  type        = string
  default     = "europe-west3"
}

variable "zone" {
  description = "Default zone to be used"
  type        = string
  default     = "europe-west3-a"
}

variable "multiregion" {
  description = "Multi-region e.g. EU, US, Asia for GCS or similar"
  type        = string
  default     = "eu"
}

variable "project" {
  type = string
}

variable "network" {
  type = string
}