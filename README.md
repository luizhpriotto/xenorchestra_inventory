## How to use:

Example of call: docker run --rm -e XOA_HOST="192.168.1.1" -e XOA_USER="xoa" -e XOA_PASS="123456" luizhpriotto/xenorchestra_inventory

It was used the xo-cli to get the Dynamic Inventory:

[xo-cli](https://github.com/vatesfr/xen-orchestra/tree/master/packages/xo-cli)

The version of npm package used is 0.11.1

To use on Ansible:

docker run --rm -e XOA_HOST="192.168.1.1" -e XOA_USER="xoa" -e XOA_PASS="123456" luizhpriotto/xenorchestra_inventory > invent.ini

ansible master -m ping --private-key xoa_rsa -u debian --become-method su --become-user root -i invent.ini

The dynamic inventary is based on system tags of Xen Orchestra.

## Example of invent.ini:

```
[kub]
192.168.1.152
192.168.1.42

[worker]
192.168.1.152

[2021.01]
192.168.1.152

[XOA]
192.168.1.152

[master]
192.168.1.4
```

Docker image:

[Dockerhub](https://hub.docker.com/r/luizhpriotto/xenorchestra_inventory)






