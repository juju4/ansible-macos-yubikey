#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

[ ! -d $rolesdir/juju4.macos-apps-install ] && git clone https://github.com/juju4/ansible-macos-apps-install $rolesdir/juju4.macos-apps-install

## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.macos-yubikey ] && ln -s ansible-macos-yubikey $rolesdir/juju4.macos-yubikey
[ ! -e $rolesdir/juju4.macos-yubikey ] && cp -R $rolesdir/ansible-macos-yubikey $rolesdir/juju4.macos-yubikey

## don't stop build on this script return code
true

