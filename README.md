##How to use:

example: docker run --rm -e XOA_HOST="192.168.1.1" -e XOA_USER="xoa" -e XOA_PASS="123456" luizhpriotto/xenorchestra_inventory

It was used the xo-cli to get the Dynamic Inventory:

[xo-cli](https://github.com/vatesfr/xen-orchestra/tree/master/packages/xo-cli)

The version of npm package used is 0.11.1

To use on Ansible:

docker run --rm -e XOA_HOST="192.168.1.1" -e XOA_USER="xoa" -e XOA_PASS="123456" luizhpriotto/xenorchestra_inventory > ivent.ini

ansible master -m ping --private-key xoa_rsa -u debian --become-method su --become-user root -i invent.ini

The dynamic inventary is based on system tags of Xen Orchestra.

Docker image:

[Dockerhub](https://hub.docker.com/r/luizhpriotto/xenorchestra_inventory)






