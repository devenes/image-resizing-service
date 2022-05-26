FROM python:2.7.18-slim-buster

COPY ./ /app
WORKDIR /app

RUN pip install -r requirements.txt

RUN apt-get build-dep python-imaging
RUN apt-get install libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev

ENTRYPOINT [ "python", "image_resizer.py" ]