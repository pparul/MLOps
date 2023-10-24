# MLOps

## Project already exists add poetry to it
- Poetry is installed system wide already

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

`git add .`
`git commit -m "Basic Steps"`
- pre-commit hooks run at this point


`poetry add great_expectations`
