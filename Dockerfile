FROM ubuntu

WORKDIR /var/www/html

RUN apt-get update && apt install nginx -y

EXPOSE 80
 
COPY . .

CMD ["nginx", "-g", "daemon off;"]
