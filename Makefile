.PHONY = jenkins

jenkins:
	@terraform apply -auto-approve -var-file=variables/jenkins.tfvars 

python:
	@terraform apply -auto-approve -var-file=variables/python.tfvars 
