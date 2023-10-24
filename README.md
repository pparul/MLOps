# MLOps

## Steps I followed to set up basic MLOps functionalities to any data science project

- Assuming a repo already exists and petry has been installed system-wide
`poetry init`
- poetry.lock and pyproject.toml created

`poetry add flake8`
- Virtual environ are created the first time you install an external pacakge
- flake added

`poetry add pytest`
- create a separte tests folder

`poetry add pre-commit`
- add a .pre-commit-config.yaml file with basic hooks
- https://pre-commit.com/

`pre-commit install`

`git add .` \
`git commit -m "Basic Steps"`
- pre-commit hooks run at this point


`poetry add great_expectations`
