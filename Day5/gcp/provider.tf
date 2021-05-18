provider "google" {
  project     ="playground-s-11-25315dd3"
  region      = "us-east1"
  zone        = "us-east1-c"
  credentials = file("/Users/ameman/Downloads/credentials.json")
}