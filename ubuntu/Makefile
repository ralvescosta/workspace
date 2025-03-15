build-so:
	docker build -t ubuntu-setup-test .

validate-script: build-so
	docker run --rm -it ubuntu-setup-test
