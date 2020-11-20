setup:
	python3 -m venv ~/.Docker

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	
lint:
	pylint --disable=R,C docker.py
	
all: install lint test