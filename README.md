# Network blocking based on ipset/iptables

## Overview

This is a set of scripts that help blocking certain subnets accessing an Ubuntu 18+ system.  Based on iptables/ipset combination, it requires both of those installed.  One can install them by simply running the following bash commands:

```bash
sudo su
apt install ipset
apt install iptables
```

## Description

`blocked.sh` is an idempotent shell script which creates/recreates the `blocked` ipset and registers it with `iptables` firewall.

One can make the script executable with:

```bash
chmod 777 blocked.sh
```

and then simply execute it:

```bash
./blocked.sh
```

## Service

The file `ip-blocked.service` contains a systemd service descriptor.  To install the service as boot time one-shot service:

```bash
cp ip-blocked.service /etc/systemd/system/
systemctl start ip-blocked
systemctl enable ip-blocked
```

Of course you would need to edit the location of the file `blocked.sh` in the `ip-blocked.service`.

## Logs

Simple `dmesg` will show any IP traffic being blocked.
