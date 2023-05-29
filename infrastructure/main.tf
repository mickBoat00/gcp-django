terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "skillful-radar-387911"
  region  = "europe-west2"
}


resource "google_sql_database_instance" "main" {
  name             = "main-db"
  database_version = "POSTGRES_15"
  region           = "europe-west2"

  settings {
    tier = "db-f1-micro"
  }

  deletion_protection = "false"
}
