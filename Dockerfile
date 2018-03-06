FROM continuumio/miniconda
MAINTAINER nathan.a.douglas@gmail.com

WORKDIR /pyslgr

RUN wget https://github.com/mitll/pyslgr/releases/download/0.7.2/examples.tar.gz
RUN wget https://github.com/mitll/pyslgr/releases/download/0.7.2/models.tar.gz
RUN wget https://github.com/mitll/pyslgr/releases/download/0.7.2/pyslgr-0.7.2-py27_0.tar.bz2
RUN wget https://github.com/mitll/pyslgr/archive/0.7.2.zip
RUN wget https://github.com/mitll/pyslgr/archive/0.7.2.tar.gz

RUN apt-get update && \
    apt-get install -y libboost-all-dev libgl1-mesa-glx

RUN conda update conda
RUN conda install -qy ujson numpy matplotlib
RUN conda install -qy pyslgr-0.7.2-py27_0.tar.bz2
RUN tar -xf examples.tar.gz
RUN tar -xf models.tar.gz
