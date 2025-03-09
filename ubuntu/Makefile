build:
	docker build -t ubuntu-setup-test .

validate: build
	docker run --rm -it ubuntu-setup-test
