
build:
	docker build -f Dockerfile -t eyedeekay/playdeb .

install: build
	install -m755 playdeb /usr/local/bin

clobber:
	docker rm -f eyedeekay/playdeb; \
	docker rmi -f eyedeekay/playdeb; true
