FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/utilio/utilio/ /root/packages/utilio/
WORKDIR /root/packages/utilio
RUN pip3 install /root/packages/utilio

CMD ["python3","test/utilio.py"]


