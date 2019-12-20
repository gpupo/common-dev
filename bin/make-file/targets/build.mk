
## Build a github CI config
common-dev-build@github-ci:
	mkdir -p .github;
	cp -rf $(CURRENT_DIR)/vendor/gpupo/common-dev/.github/workflowsl .github/;
