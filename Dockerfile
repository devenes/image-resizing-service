FROM python:2.7.18-slim-buster

COPY ./ /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "image_resizer.py" ]