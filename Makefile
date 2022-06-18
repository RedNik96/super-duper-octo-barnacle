pipeline: style test

style: pylint black isort

check: pylint black-check isort-check

pylint:
	python -m pylint super_duper_octo_barnacle

black-check:
	python -m black super_duper_octo_barnacle --check --diff

black:
	python -m black super_duper_octo_barnacle

isort-check:
	python -m isort super_duper_octo_barnacle --check --diff

isort:
	python -m isort super_duper_octo_barnacle

test:
	python -m pytest super_duper_octo_barnacle