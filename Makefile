all:
	apt-get install python3-dev python3-setuptools python3-wheel python3-pip git-review
	mkdir -p wheels && \
	pip3 wheel uwsgi -w wheels && \
	git clone https://gerrit.wikimedia.org/r/research/recommendation-api && \
	pip3 wheel ./recommendation-api -w wheels && \
	rm -rf recommendation-api && \
	rm ./wheels/recommendation*.whl
