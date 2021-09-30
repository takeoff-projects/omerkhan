resource "google_compute_global_forwarding_rule" "tfer--engineering-002D-handbook-002D-lb-002D-forwarding-002D-rule" {
  ip_address            = "34.107.170.197"
  ip_protocol           = "TCP"
  ip_version            = "IPV4"
  load_balancing_scheme = "EXTERNAL"
  name                  = "engineering-handbook-lb-forwarding-rule"
  port_range            = "80-80"
  project               = "roi-takeoff-user95"
  target                = "${data.terraform_remote_state.targetHttpProxies.outputs.google_compute_target_http_proxy_tfer--engineering-002D-handbook-002D-lb-002D-target-002D-proxy_self_link}"
}
