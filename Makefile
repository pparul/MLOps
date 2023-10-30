##@ Linting
#
# Styling
.PHONY: style
style:
	flake8

#.PHONY: lint-flake8
# lint-flake8: ## flake8 (linter)
# 	@flake8 .

#lint: lint-flake8## run all linters
#Cleaning
.PHONY: clean
clean: style
	find . -type f -name "*.DS_Store" -ls -delete
	find . | grep -E "(__pycache__|\.pyc|\.pyo)" | xargs rm -rf
	find . | grep -E ".pytest_cache" | xargs rm -rf
	find . | grep -E ".ipynb_checkpoints" | xargs rm -rf
	rm -rf .coverage*
