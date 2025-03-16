build-so:
	docker build -t ubuntu-setup-test --network host .

validate-script: build-so
	docker run -it --privileged ubuntu-setup-test
