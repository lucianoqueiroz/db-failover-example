#!/bin/bash

docker exec db-failover-example_dns-server_1 nsupdate -l -k /etc/bind/ns-postgres-com_rndc-key /var/nsupdate/01-failover
