all:
	mkdir -p wheels && \
	pip wheel -e . -w wheels && \
	python setup.py bdist_wheel && \
	cp dist/*.whl wheels
