FROM ubuntu:latest

RUN apt-get update && apt-get install -y bash

COPY search_script.sh /tmp/search_script.sh
COPY config.txt /tmp/config.txt

RUN chmod +x /tmp/search_script.sh

ENTRYPOINT ["/tmp/search_script.sh"]
