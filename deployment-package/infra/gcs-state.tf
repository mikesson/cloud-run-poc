terraform {
  backend "gcs" {
    bucket  = "c30c83f7bc84515c-bucket-tfstate"
    prefix  = "terraform/state"
  }
}