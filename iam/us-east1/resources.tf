resource "google_project_iam_member" "tfer--organizations-002F-402794363074-002F-roles-002F-roitostudentaccessuser-003A-touser95-0040-roigcp-002E-com" {
  member  = "user:touser95@roigcp.com"
  project = "roi-takeoff-user95"
  role    = "organizations/402794363074/roles/roitostudentaccess"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudbuild-002E-builds-002E-builderserviceAccount-003A-439071811037-0040-cloudbuild-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:439071811037@cloudbuild.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/cloudbuild.builds.builder"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudbuild-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-gcp-002D-sa-002D-cloudbuild-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@gcp-sa-cloudbuild.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/cloudbuild.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudfunctions-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-gcf-002D-admin-002D-robot-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@gcf-admin-robot.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/cloudfunctions.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-cloudscheduler-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-gcp-002D-sa-002D-cloudscheduler-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@gcp-sa-cloudscheduler.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/cloudscheduler.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-compute-002D-system-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@compute-system.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/compute.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-container-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-container-002D-engine-002D-robot-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@container-engine-robot.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/container.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-containerregistry-002E-ServiceAgentserviceAccount-003A-service-002D-439071811037-0040-containerregistry-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@containerregistry.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/containerregistry.ServiceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-dataproc-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-dataproc-002D-accounts-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@dataproc-accounts.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/dataproc.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-datastore-002E-owneruser-003A-touser95-0040-roigcp-002E-com" {
  member  = "user:touser95@roigcp.com"
  project = "roi-takeoff-user95"
  role    = "roles/datastore.owner"
}

resource "google_project_iam_member" "tfer--roles-002F-editorserviceAccount-003A-439071811037-002D-compute-0040-developer-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:439071811037-compute@developer.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editorserviceAccount-003A-439071811037-0040-cloudservices-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:439071811037@cloudservices.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editorserviceAccount-003A-roi-002D-takeoff-002D-user95-0040-appspot-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:roi-takeoff-user95@appspot.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editoruser-003A-touser95-0040-roigcp-002E-com" {
  member  = "user:touser95@roigcp.com"
  project = "roi-takeoff-user95"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-memcache-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-cloud-002D-memcache-002D-sa-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@cloud-memcache-sa.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/memcache.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-monitoring-002E-adminuser-003A-touser95-0040-roigcp-002E-com" {
  member  = "user:touser95@roigcp.com"
  project = "roi-takeoff-user95"
  role    = "roles/monitoring.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-owneruser-003A-grant-002E-a-002E-moyle-0040-roitraining-002E-com" {
  member  = "user:grant.a.moyle@roitraining.com"
  project = "roi-takeoff-user95"
  role    = "roles/owner"
}

resource "google_project_iam_member" "tfer--roles-002F-pubsub-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-gcp-002D-sa-002D-pubsub-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@gcp-sa-pubsub.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/pubsub.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-redis-002E-serviceAgentserviceAccount-003A-service-002D-439071811037-0040-cloud-002D-redis-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-439071811037@cloud-redis.iam.gserviceaccount.com"
  project = "roi-takeoff-user95"
  role    = "roles/redis.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-storage-002E-objectAdminuser-003A-touser95-0040-roigcp-002E-com" {
  member  = "user:touser95@roigcp.com"
  project = "roi-takeoff-user95"
  role    = "roles/storage.objectAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-storage-002E-objectVieweruser-003A-omer-002E-khan-0040-takeoff-002E-com" {
  member  = "user:omer.khan@takeoff.com"
  project = "roi-takeoff-user95"
  role    = "roles/storage.objectViewer"
}

resource "google_project_iam_member" "tfer--roles-002F-storage-002E-objectVieweruser-003A-touser95-0040-roigcp-002E-com" {
  member  = "user:touser95@roigcp.com"
  project = "roi-takeoff-user95"
  role    = "roles/storage.objectViewer"
}

resource "google_service_account" "tfer--106286441069987933909" {
  account_id   = "roi-takeoff-user95"
  disabled     = "false"
  display_name = "App Engine default service account"
  project      = "roi-takeoff-user95"
}
