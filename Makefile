all:
	mkdir -p wheels && \
	git clone https://gerrit.wikimedia.org/r/research/recommendation-api && \
	pip wheel ./recommendation-api -w wheels && \
	rm -rf recommendation-api
