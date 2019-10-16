# Terraform Schema Dumper

This is a CLI tool that parses the output of `terraform providers schema -json`
into formats useful for machine processing, e.g. Terraform code generation.

Currently, this implementation uses a Makefile. Simply run `make` to see help
content for the available commands.

## Usage

```
$ make
Available commands:

make init                           Initialize Terraform to download all the providers
make dump                           Dump all the provider schemas
make all                            Initialize Terraform and dump the provider schemas
```

## Future Usage

- dump-all
- get-resource-schema
- get-data-source-schema
- list-providers
- list-provider-resources
- list-provider-data-sources
