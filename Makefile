all:
	mkdir -p wheels && \
	pip wheel bravado-core -w wheels --no-deps && \
	pip wheel jsonschema -w wheels --no-deps && \
	pip wheel swagger-spec-validator -w wheels --no-deps && \
	pip wheel strict-rfc3339 -w wheels --no-deps && \
	pip wheel rfc3987 -w wheels --no-deps
