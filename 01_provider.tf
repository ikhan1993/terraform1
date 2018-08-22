# providing information for the gcp project 
# credential private key provided from google
# this file should be created before 'terraform init' is run
provider "google" {
	credentials = "${file("/vagrant/gcpqa-214108-8f40765d258d.json")}"
	project = "gcpqa-214108"
	region = "europe-west2"
}
