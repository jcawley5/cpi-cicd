# cpi-cicd

Examples linting of CPI flows based on the linting features of

https://github.com/mwittrock/cpilint

## Github Action Usage

The action loads the repo contents and lints each flow within the repository. Linting only checks if a description has been added to the flow.

## Local Usage

Set the rules.xml options and then build the image

### docker build

docker build -t \<your docker repo>/cpilint -f Dockerfile .

### docker run

docker run -v $(pwd)/flows:/app/cpi/flows \<your docker repo>/cpilint
