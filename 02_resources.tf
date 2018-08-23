# creating the vm here 
# using google gcp service here
# picking what type of machine and zon to use along with image of vm and nerworking required
resource "google_compute_instance" "default" {
	name = "${var.name}"
	machine_type = "${var.machine_type}"
	zone = "${var.zone}"
	boot_disk {
		initialize_params {
			image = "${var.image}"
		}
	}
	network_interface {
		network = "${var.network}"
		access_config {
			// Ephemeral IP...this being empty a ip will be assigned auto...comment
		}
	}
	
	tags = ["${var.name}"]  // list for tags for networking
	
	// creating a way to ssh into the machine of user terraform
	metadata {
		sshKeys = "${var.username}:${file("~/.ssh/id_rsa.pub")}"
	}
	provisioner "remote-exec" {
		connection = {
			type = "${var.ssh}"
			user = "${var.username}"
			private_key = "${file("~/.ssh/id_rsa")}"
		}
		// runs once vm created succesfully..executes 
		// can have either inline or script  
		//inline = [
		//	"sudo yum install -y git",
		//]
		
		// example of script
		scripts = "${var.script_list}"
	}
}
