provider "google" {
  project = "roi-takeoff-user95"
}

terraform {
	required_providers {
		google = {
	    version = "~> 3.86.0"
		}
  }
}
