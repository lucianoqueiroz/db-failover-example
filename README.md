# db-failover-example

### Stack
  - bind9
  - postgres
  - spring-boot (HikariCP)
  - alexei-led/pumba (huge thanks to @alexei-led)
### Start
  ```
    # start containers
    $ docker-compose up
  ```

### TBD

- [x] Failover script.
- [x] Query open db connections on `master.postgres.com`.
- [x] Create script for messing with database network conditions.
- [ ] Add comments in all scripts to make them easy to explain.
- [ ] Improve README.md with detailed instructions.
- [ ] Improve scripts to take arguments thus making them more flexible.
- [ ] Create script to teardown whole stack.
- [ ] Tune HikariCP configuration for rapid recovering after db failover.
