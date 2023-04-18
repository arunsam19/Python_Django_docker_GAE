FROM python:3.9-alpine
LABEL maintainer="arunprakasam.s@gmail.com"

COPY ./requirements.txt /requirements.txt
COPY ./app /app
WORKDIR /app

RUN pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home django-user    
# Optional but secure way

USER django-user 