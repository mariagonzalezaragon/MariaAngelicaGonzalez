FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

COPY post_message.sh /usr/local/bin/post_message.sh

RUN chmod +x /usr/local/bin/post_message.sh

CMD ["/usr/local/bin/post_message.sh"]
