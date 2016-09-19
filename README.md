# pypdfocr-docker

PyPDFOCR on Docker

get rid of your paperwork...

## what is pypdfocr

PyPDFOCR converts a scanned PDF into an OCR'ed PDF using Tesseract-OCR and Ghostscript

- [https://pypi.python.org/pypi/pypdfocr/](https://pypi.python.org/pypi/pypdfocr/)
- [https://github.com/virantha/pypdfocr/](https://github.com/virantha/pypdfocr/)

## Dockerfile

[**Trusted Build**](https://hub.docker.com/r/mmatiaschek/pypdfocr/)

This Docker image is based on the [official Ubuntu](https://hub.docker.com/_/ubuntu/) base image.

## How to use this image

```
docker run --rm mmatiaschek/pypdfocr [-h] [-d] [-v] [-m] [-l LANG] [--preprocess]
                [--skip-preprocess] [-w WATCH_DIR] [-f] [-c CONFIGFILE] [-e]
                [-n]
                [pdf_filename]
```

### Case 1: Single Document

```
docker run -v ~/:/media --rm pypdfocr /media/filename.pdf
```

--> reads filename.pdf from your Home directory, filename_ocr.pdf will be generated


### Case 2 : Watch folder

```
docker run -v ~/Documents/Paper:/media --rm mmatiaschek/pypdfocr -w /media -f -c /media/config.yaml
```
For sample config see [config.yaml](https://github.com/mmatiaschek/pypdfocr-docker/blob/master/config.yaml) or pypdfocr authors repository [here](https://github.com/virantha/pypdfocr/).
 
### Help

```
docker run --rm mmatiaschek/pypdfocr [-h] [-d] [-v] [-m] [-l LANG] [--preprocess]
                [--skip-preprocess] [-w WATCH_DIR] [-f] [-c CONFIGFILE] [-e]
                [-n]
                [pdf_filename]
```

### How i use this image

1. I use Scanner Pro on iOS (scanbot on Android) to scan and upload documents to a WebDAV folder without OCR
2. The WebDAV folder is hosted on my Synology DiskStation NAS via HTTPS and shared between devices with CloudStation
3. I run this PyPDFOCR on Docker manually on Mac OS X or hosted on a local server

This way my personal documents don't have to leave my hardware or network aka personal cloud.
