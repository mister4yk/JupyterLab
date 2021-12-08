FROM ubuntu
LABEL maintainer "mister4yk"
RUN apt update; apt -y upgrade; apt -y install python3-pip sudo
ADD conf /conf
WORKDIR /conf
RUN apt -y install curl
RUN  useradd -m -d /opt/jupyter -s /bin/bash jupyter
ENV PATH="/opt/jupyter/.local/bin:${PATH}"
RUN echo 'jupyter ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER jupyter
RUN pip install -r requirements.txt
RUN pip install jupyterlab
RUN mkdir /opt/jupyter/notebook
# RUN JUPYTER
WORKDIR /opt/jupyter/notebook
EXPOSE 8888
CMD jupyter-lab --no-browser --notebook-dir=/opt/jupyter/notebook --ip=0.0.0.0
