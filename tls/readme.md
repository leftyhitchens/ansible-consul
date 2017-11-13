# About

This section involves the instructions to generate ssl certificates
for your consul install
https://www.openssl.org/docs/man1.0.2/apps/config.html

## Pre-requisites

* [Jinja2 cli](https://github.com/kolypto/j2cli)
* [OpenSSL](https://github.com/openssl/openssl/blob/master/INSTALL) If you are on a mac you can install openssl using brew:

```bash
$ brew install openssl
```

```bash
cp variables.ini.example variables.ini
# Input variables specific to your environment
# The instructions below are applicable if you are
# using a directory called output as the paths that you configured
# in the variables.ini, if you have different paths you will need to update 
# the commands below accordingly 
cd tls
j2 consul.j2 variables.ini > consul.conf
j2 generate_keys.sh.j2 variables.ini > generate_keys.sh
chmod +x generate_keys.sh
./generate_keys.sh
```