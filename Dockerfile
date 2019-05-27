FROM python:3.7 as builder

RUN pip install -U Sphinx
RUN mkdir app
WORKDIR /app
COPY ./source source
COPY ./build build
RUN sphinx-build -b html source build

WORKDIR /documents
VOLUME /documents