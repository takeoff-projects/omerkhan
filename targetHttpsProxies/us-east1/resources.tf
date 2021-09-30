resource "google_compute_target_https_proxy" "tfer--engineering-002D-handbook-002D-lb-002D-target-002D-proxy-002D-2" {
  name             = "engineering-handbook-lb-target-proxy-2"
  project          = "roi-takeoff-user95"
  proxy_bind       = "false"
  quic_override    = "NONE"
  ssl_certificates = ["https://www.googleapis.com/compute/v1/projects/roi-takeoff-user95/global/sslCertificates/engineering-handbook"]
  ssl_policy       = "https://www.googleapis.com/compute/v1/projects/roi-takeoff-user95/global/sslPolicies/engineering-handbook-ssl-policy"
  url_map          = "https://www.googleapis.com/compute/v1/projects/roi-takeoff-user95/global/urlMaps/engineering-handbook-lb"
}
