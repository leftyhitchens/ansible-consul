# About

This is a role for installing a consul server or client.

## Defaults

```
consul_download_url: "https://releases.hashicorp.com/consul/1.0.0/consul_1.0.0_linux_amd64.zip"
consul_domain: consul
default_datacenter: "datacenter"
name_server_recursors: ["8.8.8.8"]
key_file_path: /etc/pki/tls/private/server.key
cert_file_path:  /etc/pki/tls/certs/server.cer
ca_file_path: /etc/pki/tls/certs/root.cer
```