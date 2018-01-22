FROM ubuntu:xenial
RUN echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb games" > /etc/apt/sources.list.d/playdeb.list
ADD http://archive.getdeb.net/getdeb-archive.key getdeb-archive.key
RUN apt-key add getdeb-archive.key
RUN apt-get update
RUN apt-get install -y libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev \
    libsdl2-mixer-dev libsdl2-net-dev libsdl2-ttf-dev libsdl2-2.0-0 \
    libsdl2-image-2.0-0 libsdl2-mixer-2.0-0 libsdl2-net-2.0-0 \
    libsdl2-ttf-2.0-0 libsdl-ttf2.0-0 libsdl-ttf2.0-dev libluajit-5.1-2 \
    libluajit-5.1-common libluajit-5.1-dev liblua5.2-dev luajit lua5.2 \
    lua-check libc-dev make git musl musl-dev musl-tools debhelper devscripts \
    xdg-user-dirs fakeroot-ng xdg-utils git-core git
RUN apt-get -y dist-upgrade
RUN adduser --home /home/playdeb --disabled-password --gecos 'playdeb,,,,' playdeb
ENTRYPOINT [ "sh", "-i", "-c" ]
