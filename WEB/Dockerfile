#A partir d'une image ubuntu
FROM ubuntu:latest

#Installe ngninx sur l'image
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php-fpm php-mysql

#créé nos dossiers des différents domaines
RUN mkdir -p /var/www/public/html
RUN mkdir -p /var/www/b2b/html
RUN mkdir -p /var/www/intranet/html

#copie les index de nos domaines dans le bon dossier sur l'image
COPY b2b/index.html /var/www/b2b/html/
COPY intranet/index.html /var/www/intranet/html/
COPY public/index.html /var/www/public/html/

#copie les configurations serveurs
COPY b2b/b2b.theys.ephec-ti.be.conf /etc/nginx/sites-available/
COPY intranet/intranet.theys.ephec-ti.be.conf /etc/nginx/sites-available/
COPY public/www.theys.ephec-ti.be.conf /etc/nginx/sites-available/

#ajout d'un lien entre site-enabled et site-available
RUN ln -s /etc/nginx/sites-available/b2b.theys.ephec-ti.be.conf /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/intranet.theys.ephec-ti.be.conf /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/www.theys.ephec-ti.be.conf /etc/nginx/sites-enabled/

#Ecoute sur le port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
