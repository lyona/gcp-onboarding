init:
	terraform init

plan: init
	terraform plan -out=plan.tfplan

apply:
	terraform apply plan.tfplan

clean:
	rm -rf .terraform
	rm -f *.plan

.PHONY: init plan apply destroy clean
