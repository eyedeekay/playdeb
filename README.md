# playdeb

Dockerfile and script for installing and launching games from playdeb on
non-ubuntu distros. In order to sidestep the problem of creating a FrankenDebian
on my

## why?

Playdeb, a popular source for Free(as in Freedom, I think) video games for the
Ubuntu platform, only packages for Ubuntu. If you try to use the Playdeb
reporitosires on Debian, then you're going to end up with dependency managment
issues that will quickly make your system a complicated, insecure mess. One way
to avoid this issue is to add the Playdeb repository to the base Ubuntu Docker
image and install and run the applications in containers based on that image.
This repo contains a script to build such a base image and a convenient script
to work inside it.

## why not x, y, z?

  1. Q. Why not compile from source on the host/in the container/use the
   maintainer's docker images/most other issues? A. Because I don't want to
   install all the necessary development libraries on the host. I don't want
   to have to keep track of the source every time I want to update. I want to
   use versions which are most widely used by the larger community. I like the
   ability to search within the packages available to Playdeb users and not
   needing to track down each game I might want to try's source reporitory.

## usage

PlayDeb Game Installer Container:
======================

This helps you install games from PlayDeb without accidentally creating
a FrankenDebian. To use it, run the command:

        playdeb

with one of the following arguments:

        add $package: Install a package in a container based on the PlayDeb-enabled container
        remove $package: Remove a container with a PlayDeb-installed package
        search $package: Search for a package to install
        launch $package: Launch a package from inside a container

Passing no arguments or an invalid argument will display this help message.

## examples

        playdeb add freeciv #install freeciv

        playdeb launch freeciv #start playing freeciv


