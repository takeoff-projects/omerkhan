data "terraform_remote_state" "urlMaps" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/urlMaps/us-east1/terraform.tfstate"
  }
}
