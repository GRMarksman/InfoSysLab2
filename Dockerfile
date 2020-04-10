FROM ubuntu:16.04


RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install software-properties-common \
    && apt-get -y install python3-pip 

RUN pip3 install --upgrade pip
RUN mkdir /script

COPY ex2.py /script

RUN pip3 install requests


ENTRYPOINT [ "python3", "/script/ex2.py" ] 
#ENTRYPOINT python3 /script/ex2.py