FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc \
  dnsutils 

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# Copy and paste existing key
RUN cp /etc/bind/rndc.key /etc/bind/ns-postgres-com_rndc-key

# Run named 
CMD ["named", "-4", "-g"]

