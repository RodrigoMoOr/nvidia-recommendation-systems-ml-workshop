ARG FROM_IMAGE_NAME=ubuntu:20.04
FROM ${FROM_IMAGE_NAME}

RUN apt-get update && \
    apt-get install -y unzip

ADD requirements.txt .
RUN pip install -r requirements.txt

ADD . /home/
WORKDIR /home
