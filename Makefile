mkfile_dir := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

export TF_STATE_KEY ?= vpc/terraform.tfstate

init:
	terraform init

clean:
	rm -rf .terraform *.tfstate*

apply console destroy graph plan output providers show: init
	terraform $@ -backend-config=key=$(TF_STATE_KEY)

get fmt validate version:
	terraform $@
