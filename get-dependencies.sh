#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

[ ! -d $rolesdir/juju4.macos_apps_install ] && git clone https://github.com/juju4/ansible-macos-apps-install $rolesdir/juju4.macos_apps_install

## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.macos_yubikey ] && ln -s ansible-macos-yubikey $rolesdir/juju4.macos_yubikey
[ ! -e $rolesdir/juju4.macos_yubikey ] && cp -R $rolesdir/ansible-macos-yubikey $rolesdir/juju4.macos_yubikey

## don't stop build on this script return code
true
