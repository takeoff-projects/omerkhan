provider "google" {
	credentials = file("~/Documents/omerkhan_sa.json")
	project = "roi-takeoff-user95"
}

terraform {
	required_providers {
		google = {
	    version = "~> 3.86.0"
		}
  }
}
