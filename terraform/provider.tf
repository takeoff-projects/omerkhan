provider "google" {
	credentials = file("~/Documents/omerkhan_sandbox_sa.json")
	project = "sandbox-20211005-46ytg6"
}

terraform {
	required_providers {
		google = {
	    version = "~> 3.86.0"
		}
  }
}
