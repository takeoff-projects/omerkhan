resource "google_compute_backend_bucket" "tfer--engineering-002D-handbook-002D-bucket" {
  bucket_name = "${data.terraform_remote_state.gcs.outputs.google_storage_bucket_tfer--engineering_handbook_name}"

  cdn_policy {
    cache_mode                   = "FORCE_CACHE_ALL"
    client_ttl                   = "0"
    default_ttl                  = "0"
    max_ttl                      = "0"
    negative_caching             = "false"
    serve_while_stale            = "0"
    signed_url_cache_max_age_sec = "0"
  }

  enable_cdn = "true"
  name       = "engineering-handbook-bucket"
  project    = "roi-takeoff-user95"
}
