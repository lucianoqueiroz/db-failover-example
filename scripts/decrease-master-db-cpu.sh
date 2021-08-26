#!/bin/bash

docker update --cpus 0.1 $(sudo docker container ls -qf "name=db-failover-example_db-master_1")
