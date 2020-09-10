## The Makefile includes instructions on running the commands
# create stack
# update stack
# delete stack
# Dockerfile should pass hadolint
# index.html should pass lint
# (Optional) Build a simple integration test

docker-build: docker build --tag=devops .

# docker-upload: 

# run-kube:
install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt 
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

all: install lint test