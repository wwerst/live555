FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils build-essential

RUN mkdir /rtsp
ADD . /rtsp
RUN cd /rtsp && ./genMakefiles linux-64bit && make -j4
