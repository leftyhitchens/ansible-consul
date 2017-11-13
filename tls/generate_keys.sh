#!/bin/bash
touch /Users/thomasbell/code/consul-automation/tls/output/database &&
echo 000a > /Users/thomasbell/code/consul-automation/tls/output/serial
# Generate the root certifiicate and private key
openssl req -newkey rsa:2048 -days 3650 -x509 -nodes \
    -out /Users/thomasbell/code/consul-automation/tls/output/root.cer -keyout /Users/thomasbell/code/consul-automation/tls/output/privatekey.pem &&
# generate the csr and the server key
openssl req -newkey rsa:1024 -nodes -out /Users/thomasbell/code/consul-automation/tls/output/server.csr \
     -keyout /Users/thomasbell/code/consul-automation/tls/output/server.key &&
# generate the self signed certificate
openssl ca -batch -config /Users/thomasbell/code/consul-automation/tls/consul.conf -notext -in /Users/thomasbell/code/consul-automation/tls/output/server.csr \
    -out /Users/thomasbell/code/consul-automation/tls/output/server.cer