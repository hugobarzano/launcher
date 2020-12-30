FROM ubuntu


RUN apt-get update
RUN apt-get install -y git libffi-dev musl-dev \
    make bash openssl openssh-client unzip jq curl docker.io python3 python3-pip
ADD requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /workspace