help:
	@echo "Usage: make dev | make prod"

dev dev-apply:
	rm -rf .terraform
	terraform init -backend-config=env-dev/backened.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod prod-apply:
	rm -rf .terraform
	terraform init -backend-config=env-prod/backened.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-dev/backened.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars

prod-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-prod/backened.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars

