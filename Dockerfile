# syntax=docker/dockerfile:1
FROM python:3.8.12-slim-buster
WORKDIR /bla
COPY ./bla.py bla.py
COPY ./requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV FLASK_APP bla
ENV FLASK_ENV development
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]`