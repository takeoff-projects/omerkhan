data "terraform_remote_state" "backendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/backendServices/us-east1/terraform.tfstate"
  }
}

data "terraform_remote_state" "regionBackendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/regionBackendServices/us-east1/terraform.tfstate"
  }
}
