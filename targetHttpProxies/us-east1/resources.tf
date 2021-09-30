resource "google_compute_target_http_proxy" "tfer--engineering-002D-handbook-002D-lb-002D-target-002D-proxy" {
  name       = "engineering-handbook-lb-target-proxy"
  project    = "roi-takeoff-user95"
  proxy_bind = "false"
  url_map    = "${data.terraform_remote_state.urlMaps.outputs.google_compute_url_map_tfer--engineering-002D-handbook-002D-lb_self_link}"
}
