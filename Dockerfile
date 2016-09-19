FROM ubuntu:latest
MAINTAINER Markus Matiaschek <mmatiaschek@ai-ag.de>

ENV LANG deu
# apt-get install tesseract-ocr tesseract-ocr-deu ghostscript imagemagick

RUN apt-get update && apt-get install -y \
	tesseract-ocr \
	tesseract-ocr-${LANG} \
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
RUN cp /usr/share/tesseract-ocr/tessdata/${LANG}.traineddata /usr/share/tesseract-ocr/tessdata/osd.traineddata

VOLUME /media

CMD ["pypdfocr"]