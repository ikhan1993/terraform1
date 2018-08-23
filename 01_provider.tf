# providing information for the gcp project 
# credential private key provided from google
# this file should be created before 'terraform init' is run
provider "google" {
	credentials = "${file("${var.path}")}"
	project = "${var.project-id}"
	region = "europe-west2"
}
