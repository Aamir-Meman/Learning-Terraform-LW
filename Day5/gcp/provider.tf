provider "google" {
  project     ="playground-s-11-7f163956"
  region      = "us-east1"
  zone        = "us-east1-c"
  credentials = file("/Users/ameman/Downloads/credentials.json")
}