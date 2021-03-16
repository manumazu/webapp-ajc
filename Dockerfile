FROM ubuntu
MAINTAINER manumazu (emmanuel.mazurier@gmail.com)
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
