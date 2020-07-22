#A partir d'une image ubuntu
FROM ubuntu:18.04

#Installe bind sur notre image
RUN apt-get update
RUN apt-get install -y bind9
RUN apt-get install -y bind9utils

#le process va run sur le port 53 en tcp et udp
EXPOSE 53/tcp
EXPOSE 53/udp

#run le service bind9
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]