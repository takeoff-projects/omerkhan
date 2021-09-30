resource "google_compute_url_map" "tfer--engineering-002D-handbook-002D-lb" {
  default_service = "https://www.googleapis.com/compute/v1/projects/roi-takeoff-user95/global/backendBuckets/engineering-handbook-bucket"
  name            = "engineering-handbook-lb"
  project         = "roi-takeoff-user95"
}
