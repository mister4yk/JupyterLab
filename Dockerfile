FROM ubuntu
LABEL maintainer "mister4yk"
RUN apt update; apt -y upgrade; apt -y install python3-pip
ADD conf /conf
WORKDIR /conf
RUN apt -y install curl
RUN  useradd -m -d /opt/jupyter -s /bin/bash jupyter
ENV PATH="/opt/jupyter/.local/bin:${PATH}"
USER jupyter
RUN pip install -r requirements.txt

