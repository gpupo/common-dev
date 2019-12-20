
## Build a github CI config
common-dev-build@github-ci:
	mkdir -p .github;
	cp -rf $(CURRENT_DIR)/vendor/gpupo/common-dev/.github/workflows .github/;

## Build a common config files
common-dev-build@common-files: common-dev-build@github-ci
common-dev-build@common-files:
	cp $(CURRENT_DIR)/vendor/gpupo/common-dev/templates/* ./
