provider "google" {
  credentials = "${file("testing-051ca839a820.json")}"
  project     = "testing-269506"
  region      = "asia-southeast1"
  zone        = "asia-southeast1-a"
}