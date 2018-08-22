# providing information for the gcp project 
# credential private key provided from google
provider "google" {
	credentials = "${file("~/gcp.json")}"
	project = "zeta-rush-204812"
	region = "europe-west2"
}
