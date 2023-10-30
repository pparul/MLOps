[![Workflow](https://github.com/pparul/MLOps/actions/workflows/workloads.yaml/badge.svg)](https://github.com/pparul/MLOps/actions/workflows/workloads.yaml)

# Basic MLOps Setup

## References
[1] https://madewithml.com/ \
[2] https://realpython.com/dependency-management-python-poetry/ \
[3] https://pre-commit.com


## Step by Step Guide

### Dependency Management With Python Poetry
- Assuming a remote/local repo already exists and poetry has been installed system-wide
- poetry.lock and pyproject.toml will be created after initializing poetry in the project\
    `poetry init`

### Add all libraries to your project
- Virtual environment is created the first time you install an external pacakge
- flake8  is a code linter with stylistic conventions that adhere to PEP8
    `poetry add flake8`\
    `poetry add matplotlib`\
    `poetry add scikit-learn`

### Virtual Environment
- Poetry will create its own virtual environment in ~\Library/Caches/pypoetry/virtualenvs/<nameoffolder>...
- Its created after first external package has been added
- **Look up virtual environment**\
    `poetry env info`\
    `poetry env info --path`\
- **Selecting virtual Environment in VS-Code**


### Pytest
- Create a separate tests folder to keep all tests\
    `poetry add pytest`


### Pre-commit Hooks
- Manually add a .pre-commit-config.yaml file with basic hooks\
    `poetry add pre-commit` \
    `pre-commit install`

- **Hooks run everytime we commit**\
    `git add .` \
    `git commit -m "Basic Steps"`

### Great Expectations
- Test for data quality\
    `poetry add great_expectations`

- **Running great-expectations test suite (with dataset location given from command line)**\
`export DATASET_LOC="/Users/parulpandey/Documents/MLOps/datasets/dataset.csv"`\
`pytest --dataset-loc=$DATASET_LOC tests/data --verbose --disable-warnings`

### Pytest
`poetry add pytest`

**Different ways of Running tests**\
`python3 -m pytest                                          # all tests` \
`python3 -m pytest tests/code                               # tests under a directory` \
`python3 -m pytest tests/code/test_predict.py               # tests for a single file` \
`python3 -m pytest tests/code/test_predict.py::test_decode  # tests for a single function`

### Coverage
`coverage run -m pytest   #generic coverage`      \
`coverage run -m pytest --dataset-loc=$DATASET_LOC tests/data`\
`coverage report -m`


### ML FLow setup [TODO]


### Logging

### Documentation
