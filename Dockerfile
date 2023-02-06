FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp/
WORKDIR /tmp/
RUN pip install -qr requirements.txt
ADD app.py /opt/webapp/
WORKDIR /opt/webapp/
EXPOSE 5000
CMD [ "python", "./app.py"]