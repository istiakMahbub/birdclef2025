PY=python
PIP=pip

.PHONY: setup activate enable-nbstripout strip-notebooks freeze

setup:
	$(PY) -m venv .venv && . .venv/bin/activate && $(PIP) install -U pip && $(PIP) install -r requirements.txt

enable-nbstripout:
	. .venv/bin/activate && nbstripout --install

strip-notebooks:
	. .venv/bin/activate && nbstripout notebooks/*.ipynb

freeze:
	. .venv/bin/activate && pip freeze > requirements-freeze.txt
