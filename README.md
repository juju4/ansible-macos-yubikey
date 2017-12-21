[![Build Status - Master](https://travis-ci.org/juju4/ansible-macos-yubikey.svg?branch=master)](https://travis-ci.org/juju4/ansible-macos-yubikey)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-macos-yubikey.svg?branch=devel)](https://travis-ci.org/juju4/ansible-macos-yubikey/branches)
# macOS yubikey ansible role

Ansible role to setup yubikey on macOS.
https://www.yubico.com/
https://github.com/plusjeff/yubikey-macos-setup

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.4

### Operating systems

MacOS 10.11, 10.12

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.macos-yubikey
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github).

## Troubleshooting & Known issues

* Ensure to have backup before executing this role and to have an admin account that can be use for rescue if configuration is messed up. Obviously, the rescue admin account should be configured without yubikey. Enabling ssh is another option (which should be the case anyway if using ansible in non-local mode). Last option is booting in recovery mode to revert whatever is necessary.


## License

BSD 2-clause

