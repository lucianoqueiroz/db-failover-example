# db-failover-example

### Stack
  - bind9
  - postgres
  - spring-boot (HikariCP)

### Start
  ```
    # start containers
    $ docker-compose up
  ```
  ```
    # start dns-server
    $ sudo docker exec -d db-failover-example_dns-server_1 /etc/init.d/bind9 start 
  ```
  ```
    # add dns-server nameserver to /etc/resolv.conf
    $ sudo vim /etc/resolv.conf
    
    # /etc/resolv.conf
    ...
    nameserver 172.20.0.2 # dns-server container ip
    nameserver 127.0.0.53
    options edns0 trust-ad
  ```
  ```
    # test the dns-server container is solving hostnames
    
    $ ping replica.postgres.com
    PING replica.postgres.com (172.20.0.4) 56(84) bytes of data.
    64 bytes from 172.20.0.4 (172.20.0.4): icmp_seq=1 ttl=64 time=0.053 ms
    64 bytes from 172.20.0.4 (172.20.0.4): icmp_seq=2 ttl=64 time=0.068 ms
    64 bytes from 172.20.0.4 (172.20.0.4): icmp_seq=3 ttl=64 time=0.066 ms
    64 bytes from 172.20.0.4 (172.20.0.4): icmp_seq=4 ttl=64 time=0.061 ms
    64 bytes from 172.20.0.4 (172.20.0.4): icmp_seq=5 ttl=64 time=0.065 ms
 
    --- replica.postgres.com ping statistics ---
    5 packets transmitted, 5 received, 0% packet loss, time 4078ms
    rtt min/avg/max/mdev = 0.053/0.062/0.068/0.005 ms
  ```
