<<<<<<< HEAD
FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

COPY post_message.sh /usr/local/bin/post_message.sh

RUN chmod +x /usr/local/bin/post_message.sh

CMD ["/usr/local/bin/post_message.sh"]
=======
FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
RUN chmod -R 755 /usr/share/nginx/html/assets
COPY ./ /usr/share/nginx/html
COPY ./index.html /usr/share/nginx/html/
COPY ./styles.css /usr/share/nginx/html/
COPY ./assets /usr/share/nginx/html/assets
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 83
>>>>>>> e1d6f3139862c882bed7eabc7093dbb1d16e844b
