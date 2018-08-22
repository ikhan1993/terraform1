# creating the vm here 
# using google gcp service here
# picking what type of machine and zon to use along with image of vm and nerworking required
resource "google_compute_instance" "default" {
	name = "test"
	machine_type = "n1-standard-1"
	zone = "europe-west2-c"
	boot_disk {
		initialize_params {
			image = "centos-7"
		}
	}
	network_interface {
		network = "default"
		access_config {
			// Ephemeral IP...this being empty a ip will be assigned...comment
		}
	}
}
