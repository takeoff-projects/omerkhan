data "terraform_remote_state" "gcs" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/gcs/us-east1/terraform.tfstate"
  }
}
