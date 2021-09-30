resource "google_dns_managed_zone" "tfer--omerkhan-002D-org" {
  description = "DNS zone for domain: omerkhan.org"
  dns_name    = "omerkhan.org."

  dnssec_config {
    default_key_specs {
      algorithm  = "rsasha256"
      key_length = "2048"
      key_type   = "keySigning"
      kind       = "dns#dnsKeySpec"
    }

    default_key_specs {
      algorithm  = "rsasha256"
      key_length = "1024"
      key_type   = "zoneSigning"
      kind       = "dns#dnsKeySpec"
    }

    kind          = "dns#managedZoneDnsSecConfig"
    non_existence = "nsec3"
    state         = "on"
  }

  force_destroy = "false"
  name          = "omerkhan-org"
  project       = "roi-takeoff-user95"
  visibility    = "public"
}

resource "google_dns_record_set" "tfer--omerkhan-002D-org_engineering-002D-handbook-002E-omerkhan-002E-org-002E--002D-A" {
  managed_zone = "google_dns_managed_zone.tfer--omerkhan-002D-org.name"
  name         = "engineering-handbook.google_dns_managed_zone.tfer--omerkhan-002D-org.dns_name"
  project      = "roi-takeoff-user95"
  rrdatas      = ["34.107.170.197"]
  ttl          = "1"
  type         = "A"
}

resource "google_dns_record_set" "tfer--omerkhan-002D-org_omerkhan-002E-org-002E--002D-NS" {
  managed_zone = "google_dns_managed_zone.tfer--omerkhan-002D-org.name"
  name         = "google_dns_managed_zone.tfer--omerkhan-002D-org.dns_name"
  project      = "roi-takeoff-user95"
  rrdatas      = ["ns-cloud-a1.googledomains.com.", "ns-cloud-a2.googledomains.com.", "ns-cloud-a3.googledomains.com.", "ns-cloud-a4.googledomains.com."]
  ttl          = "21600"
  type         = "NS"
}

resource "google_dns_record_set" "tfer--omerkhan-002D-org_omerkhan-002E-org-002E--002D-SOA" {
  managed_zone = "google_dns_managed_zone.tfer--omerkhan-002D-org.name"
  name         = "google_dns_managed_zone.tfer--omerkhan-002D-org.dns_name"
  project      = "roi-takeoff-user95"
  rrdatas      = ["ns-cloud-a1.googledomains.com. cloud-dns-hostmaster.google.com. 1 21600 3600 259200 300"]
  ttl          = "21600"
  type         = "SOA"
}
