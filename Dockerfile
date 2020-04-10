FROM ubuntu:16.04


RUN apt-get update \
&& apt-get -y upgrade \
&& apt-get -y install software-properties-common \
&& apt-get -y install python3-pip 

RUN mkdir script

COPY ex2.py script
ENTRYPOINT [ "script/ex2.py" ] 
