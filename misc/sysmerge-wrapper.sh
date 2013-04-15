#!/bin/sh --

#
# Automatic OpenBSD sysmerge script.
#

basepath="http://ftp.eu.openbsd.org/pub/OpenBSD"
arch=$(uname -p)
release=$(uname -r | sed 's/\.//')
rdir=$(awk -F/ '/installpath/{print $6}' /etc/pkg.conf)

sysmerge -s ${basepath}/${rdir}/${arch}/etc${release}.tgz -x ${basepath}/${rdir}/${arch}/xetc${release}.tgz
