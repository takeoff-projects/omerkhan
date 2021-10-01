provider "google" {
  project = "roi-takeoff-user95"
}

terraform {
	credentials = file(""~/Documents/GitHub/omerkha/sa_kay.json")
	required_providers {
		google = {
	    version = "~> 3.86.0"
		}
  }
}
