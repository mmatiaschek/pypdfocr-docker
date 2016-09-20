FROM ubuntu:latest
MAINTAINER Markus Matiaschek <mmatiaschek@ai-ag.de>

ENV T_LANG deu

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  


RUN apt-get update && apt-get install -y \
	tesseract-ocr \
	tesseract-ocr-${T_LANG} \
	ghostscript \
	imagemagick \
	python \
	python-pip \
	python-dev \
	gcc \
	libjpeg-dev \
	minizip \
	poppler-utils 

RUN pip install pypdfocr
RUN cp /usr/share/tesseract-ocr/tessdata/${T_LANG}.traineddata /usr/share/tesseract-ocr/tessdata/osd.traineddata

# Patch for Issue #41 of pypdfocr 0.9.0 - to be fixed in 0.9.1
WORKDIR /
COPY issue_41.patch .
RUN patch -l /usr/local/lib/python2.7/dist-packages/pypdfocr/pypdfocr_watcher.py -i issue_41.patch

VOLUME /media

ENTRYPOINT ["/usr/local/bin/pypdfocr"]