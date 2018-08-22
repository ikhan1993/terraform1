# providing information for the gcp project 
# credential private key provided from google
# this file should be created before 'terraform init' is run
provider "google" {
	credentials = "${file("~/gcp.json")}"
	project = "zeta-rush-204812"
	region = "europe-west2"
}
