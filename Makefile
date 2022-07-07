VENV_NAME?=.venv
PYTHON=${VENV_NAME}/bin/python
RUN_PYTHON_MODULE=${PYTHON} -m

pr: style test

style: pylint black isort

check: pylint black-check isort-check

pylint:
	${RUN_PYTHON_MODULE} pylint super_duper_octo_barnacle

black-check:
	${RUN_PYTHON_MODULE} black super_duper_octo_barnacle --check --diff

black:
	${RUN_PYTHON_MODULE} black super_duper_octo_barnacle

isort-check:
	${RUN_PYTHON_MODULE} isort super_duper_octo_barnacle --check --diff

isort:
	${RUN_PYTHON_MODULE} isort super_duper_octo_barnacle

test:
	${RUN_PYTHON_MODULE} pytest super_duper_octo_barnacle

run:
	${RUN_PYTHON_MODULE} uvicorn super_duper_octo_barnacle.main:app --reload