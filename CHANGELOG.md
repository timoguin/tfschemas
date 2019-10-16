# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

<~--
Any notes about merges to master that haven't been added to a Git tag should go
here. When it's time to cut a new release, create a header for the new version
below and move the content of this section down to the new version.

### Added

If you add any new code or functionality, document your changes here.

### Changed

If you change any existing code or functionality, document your changes here.

### Removed

If you remove any existing code or functionality, document your changes here.

-->

## [0.1.0]

Initial release that dumps provider schemas.

### Added

- providers.tf with configurations/constraints for aws, fastly, github, google,
  pagerduty, sentry, and venafi. There is also a placeholder for the
  artifactory provider that needs to be built manually.
- Makefile with targets init, dump, and all
- Current schema dump for all the above-listed providers at schemas/all.json
- make targets to dump subsets of schemas: get_providers, get_data_sources, get_resources

<!--
This section should be updated with every release. It contains a sequence of
links to GitHub that show the full Git diff between each release. The brackets
allow us to render the version headers as links by adding brackets to any
matching headers. Any commits that don't yet belong to a Git tag will show the
Git diff from the last tag to the master branch HEAD.
-->
[Unreleased]: https://github.com/timoguin/tfschemas/compare/v0.1.0..HEAD
[0.1.0]: https://github.com/timoguin/tfschemas/tree/v0.1.0
