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
