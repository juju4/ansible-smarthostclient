[![Build Status](https://travis-ci.org/juju4/ansible-smarthostclient.svg?branch=master)](https://travis-ci.org/juju4/ansible-smarthostclient)
# Set up system with smarthost as ansible role

A simple ansible role to setup smarthost on unix system.
Currently postfix only.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0

### Operating systems

Tested with vagrant on Ubuntu 14.04, Kitchen test with trusty and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - smarthostclient
```

## Variables

```
smarthost_passfile:
 - smarthost_passwd
smarthost_passwd_md5:

smarthost_host: '[smtp.gmail.com]:587'
smarthost_userpass: login:pass
```


## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/smarthostclient
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/smarthostclient/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

