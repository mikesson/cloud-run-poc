Perform steps as per
https://cloud.google.com/docs/terraform/resource-management/store-state


Steps:

(make sure you cd into this dir)
`cd cloud-run-poc/deployment-package/infra`

`gcloud config set project cloud-run-poc-tf-3`

also set your project ID in the `terraform.tfvars` file

`gcloud services enable storage.googleapis.com`

`terraform init`

(important, don't apply the whole repo yet)

`terraform apply -target="module.remote-state"`

on successful result,


enable the remote state tf file via

`cp gcs-state.tf.disabled gcs-state.tf`

Copy the storage bucket ID: e.g. ... [id=324kb234kju7-bucket-tfstate]


Paste it as value of key "bucket" into `infra/gcs-state.tf`


run `terraform init` again to configure the terraform backend


Terraform detects that you already have a state file locally and prompts you to copy it to the new Cloud Storage bucket. Enter yes.

`terraform apply` and `yes`


