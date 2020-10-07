#FROM python:3.8-slim
FROM jupyter/tensorflow-notebook:36d857bb0121

MAINTAINER matt salmon <matt_salmon@hotmail.com>

# set install user as Root
USER root

# This prevents Python from writing out pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# This keeps Python from buffering stdin/stdout
ENV PYTHONUNBUFFERED 1

# install system dependencies
RUN apt-get update && \
    apt-get -y install gcc make && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get install -y git nano 

# install dependencies
RUN pip install --no-cache-dir --upgrade pip
#RUN pip install --no-cache-dir matplotlib numpy pandas

# copy and install requirements.txt
#COPY ./requirements.txt /src/app/requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt

# set work directory
WORKDIR /usr/src

# Install github libraries
RUN cd /

# Install tropycal and dependencies
RUN git clone https://github.com/tropycal/tropycal && \
    cd tropycal && \
    python setup.py install && \
    cd .. && \
    rm -rf tropycal
RUN conda install -c conda-forge cartopy

# Start jupyter
CMD jupyter notebook --allow-root

