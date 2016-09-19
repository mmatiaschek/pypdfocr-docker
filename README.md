# pypdfocr-docker

PyPDFOCR on Docker
get rid of your paperwork...

## what is pypdfocr

PyPDFOCR converts a scanned PDF into an OCR'ed PDF using Tesseract-OCR and Ghostscript

[https://pypi.python.org/pypi/pypdfocr/](https://pypi.python.org/pypi/pypdfocr/)
[https://github.com/virantha/pypdfocr/](https://github.com/virantha/pypdfocr/)

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
TODO
```

### Case 2 : Watch folder

```
docker run -v /Users/mmatiaschek/Documents/Paper:/media --rm mmatiaschek/pypdfocr -w /Users/mmatiaschek/Documents/Paper -f -c /Users/mmatiaschek/Documents/Paper/config.yaml
```

### Help

```
...
```