#A partir d'une image ubuntu
FROM ubuntu:18.04

#Installe bind sur notre image
RUN apt-get update
RUN apt-get install -y bind9
RUN apt-get install -y bind9utils

#Ajoute les directories internals et externals
RUN mkdir /etc/bind/externals
RUN mkdir /etc/bind/internals

#Copie les fichiers de configurations
COPY config/named.conf /etc/bind/
COPY config/named.conf.default-zones /etc/bind/
COPY config/named.conf.local /etc/bind/
COPY config/named.conf.options /etc/bind/
COPY config/externals/db.theys.ephec-ti.be /etc/bind/externals
COPY config/internals/db.theys.ephec-ti.be /etc/bind/internals

#le process va run sur le port 53 en tcp et udp
EXPOSE 53/tcp
EXPOSE 53/udp

WORKDIR /etc/bind

VOLUME /etc/bind

#run le service bind9
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]