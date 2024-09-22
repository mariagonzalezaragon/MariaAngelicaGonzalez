FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
RUN chmod -R 755 /usr/share/nginx/html/assets
COPY ./ /usr/share/nginx/html
COPY ./index.html /usr/share/nginx/html/
COPY ./styles.css /usr/share/nginx/html/
COPY ./assets /usr/share/nginx/html/assets
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 83
