// creating variable to be used in 02
// default is the value that is being replace in 02

variable "name" {
	type = "string"
	default = "default-test"
}

variable "machine_type" {
	type = "string"
	default = "n1-standard-1"
}

variable "image" {
	type = "string"
	default = "centos-7"
}

variable "zone" {
	type = "string"
	default = "europe-west2-c"
}

variable "network" {
	type = "string"
	default = "default"
}

variable "username" {
	type = "string"
	default = "terraform"
}

variable "ssh" {
	type = "string"
	default = "ssh"
}

// below is for a list 
variable "script_list" {
	default = [
	//	"scripts/python-server",
		"scripts/file2",
		"scripts/file1"
	]
}
