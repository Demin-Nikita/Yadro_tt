FROM ubuntu:22.04

RUN apt update && apt install -y python3 python3-pip

RUN pip3 install requests

WORKDIR /app
COPY http_tester.py /app/http_tester.py

CMD ["python3", "http_tester.py"]
