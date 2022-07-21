FROM python:3.8-buster

RUN apt update && apt install -y libsecp256k1-dev squashfs-tools

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
