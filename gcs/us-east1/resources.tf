resource "google_storage_bucket" "tfer--engineering_handbook" {
  bucket_policy_only          = "true"
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "US-EAST1"
  name                        = "engineering_handbook"
  project                     = "roi-takeoff-user95"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "true"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_acl" "tfer--engineering_handbook" {
  bucket = "engineering_handbook"
}

resource "google_storage_bucket_iam_binding" "tfer--engineering_handbook" {
  bucket = "b/engineering_handbook"
}

resource "google_storage_bucket_iam_policy" "tfer--engineering_handbook" {
  bucket = "b/engineering_handbook"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:roi-takeoff-user95",
        "projectOwner:roi-takeoff-user95"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:roi-takeoff-user95"
      ],
      "role": "roles/storage.legacyBucketReader"
    },
    {
      "members": [
        "projectEditor:roi-takeoff-user95",
        "projectOwner:roi-takeoff-user95"
      ],
      "role": "roles/storage.legacyObjectOwner"
    },
    {
      "members": [
        "projectViewer:roi-takeoff-user95"
      ],
      "role": "roles/storage.legacyObjectReader"
    },
    {
      "members": [
        "allUsers",
        "serviceAccount:439071811037-compute@developer.gserviceaccount.com"
      ],
      "role": "roles/storage.objectViewer"
    }
  ]
}
POLICY
}

resource "google_storage_default_object_acl" "tfer--engineering_handbook" {
  bucket = "engineering_handbook"
}
