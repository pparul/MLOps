# Basic MLOps Setup

## References
[1] https://madewithml.com/\
[2] https://realpython.com/dependency-management-python-poetry/\
[3] https://pre-commit.com/\


## Dependency Management With Python Poetry
- Assuming a remote/local repo already exists and poetry has been installed system-wide
- poetry.lock and pyproject.toml will be created
    `poetry init`


### Add all libraries to your project
- Virtual environment is created the first time you install an external pacakge
    `poetry add flake8`


- Look up virtual environment
`poetry env info`
`poetry env info --path`


### Pytest
- Create a separate tests folder to keep all tests\
`poetry add pytest`

### Pre-commit Hooks
- add a .pre-commit-config.yaml file with basic hooks
`poetry add pre-commit`


`pre-commit install`

`git add .` \
`git commit -m "Basic Steps"`
- pre-commit hooks run at this point


`poetry add great_expectations`

`poetry add matplotlib`

`poetry add scikit-learn`



Selecting virtual Environment:
In VS-Code

Running great-expectations test suite (with input to )

`export DATASET_LOC="/Users/parulpandey/Documents/MLOps/datasets/dataset.csv"`
`pytest --dataset-loc=$DATASET_LOC tests/data --verbose --disable-warnings`


Pytest

`python3 -m pytest                                          # all tests`
`python3 -m pytest tests/code                               # tests under a directory`
`python3 -m pytest tests/code/test_predict.py               # tests for a single file`
`python3 -m pytest tests/code/test_predict.py::test_decode  # tests for a single function`

Coverage

`coverage run -m pytest --dataset-loc=$DATASET_LOC tests/data`
`coverage report -m`
