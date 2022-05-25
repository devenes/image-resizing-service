FROM python:3.11-rc-slim

COPY ./ /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "image_resizer.py" ]