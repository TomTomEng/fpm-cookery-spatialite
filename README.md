Purpose
=======
SQLite and particularly Spatialite packages are out of date on most platforms. To standardize, we use these [fpm-cookery](https://github.com/bernd/fpm-cookery) recipes to create rpms from source.

Contents
========
This repo contains fpm-cookery recipes to create rpm/debs for the following tools:

- libsqlite (3.8.6)
- readosm (1.0.0)
- freexl (1.0.0)
- geos (3.4.2)
- proj4 (4.8.0)
- libspatialite (4.2.0)
- spatialitetools (4.2.0)

Installation - Packages
=======================
Install the rpms in this order.

- libsqlite
- readosm
- freexl
- geos
- proj4
- libspatialite
- spatialitetools

Building the packages
=====================
Building the packages is performed within a docker container; so docker should be available on the system building the rpms. The build script can be invoked by:

    sudo ./make-rpms

After that you should find the following in the `rpms` folder:

    freexl-1.0.0-1.x86_64.rpm
    geos-3.4.2-1.x86_64.rpm
    libspatialite-4.2.0-1.x86_64.rpm
    libsqlite-3.8.6-1.x86_64.rpm
    proj4-4.8.0-1.x86_64.rpm
    ReadOSM-1.0.0-1.x86_64.rpm
    spatialitetools-4.2.0-1.x86_64.rpm

Note on updating component version: update the version, url and sha1 in the relevant recipe.rb file.

TODO
====
- deb packaging