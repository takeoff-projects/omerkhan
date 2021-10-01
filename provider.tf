provider "google" {
  project = "roi-takeoff-user95"
}

terraform {
	credentials = file("~/Documents/omerkhan_sa.json")
	required_providers {
		google = {
	    version = "~> 3.86.0"
		}
  }
}
