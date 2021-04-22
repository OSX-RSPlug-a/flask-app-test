clean:
	@find ./ -name '*.pyc' -exec rm -f {} \;
	@find ./ -name 'Thumbs.db' -exec rm -f {} \;
	@find ./ -name '*~' -exec rm -f {} \;
	rm -rf .cache
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
	rm -rf htmlcov
	rm -rf .tox/
	rm -rf docs/_build
	pip3 install -e . --upgrade --no-cache

install:
	pip3 install -e .

format:
	isort **/*.py
	black -l 79 **/*.py

run:
	FLASK_APP=server.py FLASK_ENV=development flask run