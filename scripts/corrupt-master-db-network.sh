#!/bin/bash

# Corrupt packets from the `db-failover-example_db-master_1` Docker container

docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba --log-level debug netem --duration $2 corrupt --percent $1 db-failover-example_db-master_1
