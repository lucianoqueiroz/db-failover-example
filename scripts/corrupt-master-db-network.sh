#!/bin/bash

docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba --log-level debug netem --duration 5m corrupt --percent 80 db-failover-example_db-master_1
