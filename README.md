# About

This is a role for installing a consul server or client. 
By default it installs as a client but you can configure it as a server by setting is_server: true


## Optional Default Variables

```
consul_download_url: "https://releases.hashicorp.com/consul/1.0.0/consul_1.0.0_linux_amd64.zip"
consul_domain: consul
default_datacenter: "datacenter"
name_server_recursors: ["8.8.8.8"]
key_file_path: /etc/pki/tls/private/server.key
cert_file_path:  /etc/pki/tls/certs/server.cert
ca_file_path: /etc/pki/tls/certs/root.cert
is_server: false
```

## Required Variables

```
verify_incoming: true|false bool
verify_outgoing: true|false bool
verify_incoming_rpc: true|false bool
verify_server_hostname: true|false bool
```