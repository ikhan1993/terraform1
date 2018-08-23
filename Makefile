.PHONY = jenkins

jenkins:
	@terraform apply -auto-approve -var-file=variables/jenkins.tfvars
