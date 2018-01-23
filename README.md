# playdeb
Dockerfile and script for installing and launching games from playdeb on
non-ubuntu distros. In order to sidestep the problem of creating a FrankenDebian
on my

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


