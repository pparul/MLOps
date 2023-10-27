.PHONY: format-black
format-black: ## black (code formatter)
	@black .

.PHONY: format
format: format-black format-isort ## run all formatters

##@ Linting


##@ Linting

.PHONY: lint-black
lint-black: ## black in linting mode
	@black . --check

.PHONY: lint-flake8
lint-flake8: ## flake8 (linter)
	@flake8 .

lint: lint-black lint-flake8## run all linters
