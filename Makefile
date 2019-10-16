schemas_dir := schemas
all_schemas := ${schemas_dir}/all.json


help:
	@echo "Available commands:"
	@echo
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36mmake %-30s\033[0m %s\n", $$1, $$2}'
	@echo

init: ## Initialize Terraform to download all the providers
	terraform init

dump: ## Dump all the provider schemas 
	terraform providers schema -json | jq > ${all_schemas}

all: init dump ## Initialize Terraform and dump the provider schemas

get_providers: ## Get a list of installed providers
	@jq '.provider_schemas | keys' < ${all_schemas}

get_data_sources: ## Get a list of data sources for a provider (e.g., make get_data_sources provider=aws)
	@jq '.provider_schemas.${provider}.data_source_schemas | keys' < ${all_schemas}

get_resources: ## Get a list of resources for a provider (e.g., make get_resources provider=aws)
	@jq '.provider_schemas.${provider}.resource_schemas | keys' < ${all_schemas}
