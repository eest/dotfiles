#!/bin/sh --

#
# Automatic OpenBSD sysmerge script.
#

pkg_conf="/etc/pkg.conf"

basepath=$(sed 's,installpath = \(.*pub/OpenBSD\).*,\1,' ${pkg_conf})
arch=$(uname -p)
tarball_version=$(uname -r | sed 's/\.//')
release_dir=$(awk -F/ '/installpath/{print $6}' ${pkg_conf})

sysmerge -s ${basepath}/${release_dir}/${arch}/etc${tarball_version}.tgz -x ${basepath}/${release_dir}/${arch}/xetc${tarball_version}.tgz
