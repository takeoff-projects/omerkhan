data "terraform_remote_state" "targetHttpProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/targetHttpProxies/us-east1/terraform.tfstate"
  }
}

data "terraform_remote_state" "targetHttpsProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/targetHttpsProxies/us-east1/terraform.tfstate"
  }
}

data "terraform_remote_state" "targetSslProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/roi-takeoff-user95/targetSslProxies/us-east1/terraform.tfstate"
  }
}
