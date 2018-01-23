
define PLAYDEB_BASE_IMAGE
'FROM ubuntu:xenial \
RUN echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb games" > /etc/apt/sources.list.d/playdeb.list \
ADD http://archive.getdeb.net/getdeb-archive.key getdeb-archive.key \
RUN apt-key add getdeb-archive.key \
RUN apt-get update \
RUN apt-get install -y xdg-user-dirs xdg-utils liblz4-tool less \
RUN apt-get -y dist-upgrade \
RUN adduser --home /home/playdeb --disabled-password --gecos 'playdeb,,,,' playdeb \
ENTRYPOINT [ "sh", "-i", "-c" ]'
endef

export PLAYDEB_BASE_NAME

emit:
	@echo $$PLAYDEB_BASE_NAME

build: .build

.build:
	docker build -f Dockerfile -t eyedeekay/playdeb .
	touch .build

install: build
	install -m755 playdeb /usr/local/bin

clobber:
	docker rm -f eyedeekay/playdeb; \
	docker rmi -f eyedeekay/playdeb; true

remove: clobber

uninstall: clobber

