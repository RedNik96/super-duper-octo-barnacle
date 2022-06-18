pipeline: style test

style: pylint black isort

check: pylint black-check isort-check

pylint:
	pylint super_duper_octo_barnacle

black-check:
	black super_duper_octo_barnacle --check --diff

black:
	black super_duper_octo_barnacle

isort-check:
	isort super_duper_octo_barnacle --check --diff

isort:
	isort super_duper_octo_barnacle

test:
	pytest super_duper_octo_barnacle